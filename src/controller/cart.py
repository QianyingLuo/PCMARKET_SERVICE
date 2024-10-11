from fastapi import APIRouter, Depends, Form, Request
from fastapi.responses import HTMLResponse, JSONResponse, RedirectResponse

from ..api import cart as cart_api
from ..api import product as product_api
from ..utils.jinja import templates 
from ..config.log import logger
from ..middlewares import get_current_user, get_current_cart, get_current_favorite
from ..domain import cart as cart_domain

router = APIRouter()

@router.get("/", response_class=HTMLResponse)
def render_cart(request: Request, 
                user: dict = Depends(get_current_user),
                favorite_navbar: dict = Depends(get_current_favorite),
                cart: dict = Depends(get_current_cart)):
    
    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)

    logger.info("GET: cart page")
    
    user_id = user["id"]

    cart_exists = cart_api.get_cart_exists_by_user_id(user_id)

    cart = cart_api.get_cart_by_user_id(user_id)

    cart_details = []
    total = 0
    
    if cart:
        for item in cart:
            product_details = product_api.get_product_by_id(item.product_id)
            if product_details:
                if product_details.discount_decimal != 0:
                    price = round(product_details.price * (1 - product_details.discount_decimal), 2)
                else:
                    price = product_details.price
                
                subtotal = round((price * item.product_quantity), 2)

                cart_details.append({
                    "product_id": item.product_id,
                    "product_quantity": item.product_quantity,
                    "name": product_details.name,
                    "image": product_details.image,
                    "price": price,
                    "subtotal": subtotal
                })
                total += subtotal

    total = round(total, 2)
                
    return templates.TemplateResponse("pages/cart.html", {"request": request, "user": user, "favorite_navbar": favorite_navbar, "cart_exists": cart_exists, "cart": cart_details, "total": total})

    
@router.post("/{product_id}", response_class=JSONResponse, response_model=dict)
async def add_to_cart(product_id: int, 
                      product_quantity: int = Form(...), 
                      user: dict = Depends(get_current_user)):

    if not user:
        return JSONResponse(content={"redirect_url": "/user/login"}, status_code=401)
    
    logger.info(f"POST: Adding product {product_id} to cart with quantity {product_quantity}")

    user_id = user["id"]

    quantity_error = None

    if product_quantity <= 0:
        quantity_error = "La cantidad debe ser un número entero positivo"

    stock = product_api.get_product_stock_by_id(product_id)
    
    if product_quantity > stock:
        quantity_error =  "Cantidad introducida superior al stock disponible"

    if quantity_error:
        return JSONResponse(content={"error": quantity_error}, status_code=409)
    

    cart_to_save = cart_domain.Cart(user_id=user_id, product_id=product_id, product_quantity=product_quantity)
    
    cart = cart_api.add_to_cart(cart_to_save)
    cart_dict = {
        "user_id": cart.user_id,
        "product_id": cart.product_id,
        "product_quantity": cart.product_quantity
    }

    return JSONResponse(status_code=200, content={"message": "Producto añadido al carrito", "cart":cart_dict})


@router.patch("/{product_id}", response_class=JSONResponse, response_model=dict)
async def edit_cart(product_id: int, 
                    product_quantity: int = Form(...), 
                    user: dict = Depends(get_current_user)):

    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)
    
    logger.info(f"PATCH: Editing quantity of product {product_id} in cart")

    user_id = user["id"]

    previous_quantity = cart_api.get_product_quantity_in_cart(user_id, product_id)

    quantity_error = None

    if product_quantity <= 0:
        quantity_error = "La cantidad debe ser un número entero positivo"

    stock = product_api.get_product_stock_by_id(product_id)

    if product_quantity > stock:
        quantity_error =  "Cantidad introducida superior al stock disponible"

    if quantity_error:
        return JSONResponse(content={
            "error": quantity_error,
            "previous_quantity": previous_quantity,
        }, status_code=200)

    quantity_to_update = cart_domain.Cart(user_id=user_id, product_id=product_id, product_quantity=product_quantity)
    product = product_api.get_product_by_id(product_id)
    product_price = product.discounted_price if product.discount_decimal != 0 else product.price
    cart = cart_api.update_product_quantity(quantity_to_update)
    total_cart = cart_api.get_total_user_cart_price(user_id)

    cart_dict = {
        "user_id": cart.user_id,
        "product_id": cart.product_id,
        "product_quantity": cart.product_quantity
    }

    return JSONResponse(status_code=200, content={
        "message": "Cantidad actualizada en el carrito", 
        "cart": cart_dict,  
        "product_price": product_price,
        "total_cart": total_cart
    })
    

@router.delete("/{product_id}", response_class=JSONResponse, response_model=dict)
async def delete_product_in_cart(product_id: int, 
                    user: dict = Depends(get_current_user)):
    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)
    
    logger.info(f"DELETE: Deleting product {product_id} from cart")

    user_id = user["id"]
    
    cart_api.delete_product(product_id, user_id)
    total_cart = cart_api.get_total_user_cart_price(user_id)

    is_empty = False
    if not total_cart:
        is_empty = True

    return JSONResponse(status_code=200, content={
        "total_cart": total_cart,
        "is_empty": is_empty
    })
    