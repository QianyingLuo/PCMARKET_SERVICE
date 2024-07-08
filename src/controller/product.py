from fastapi import APIRouter, Depends, Form, HTTPException, Request
from fastapi.responses import HTMLResponse, JSONResponse
from ..api import product as product_api
from ..api import cart as cart_api
from ..utils.jinja import templates
from ..config import types, exception_messages
from ..config.log import logger
from ..middlewares import get_current_user, get_current_cart
from ..domain import cart as cart_domain


router = APIRouter()

@router.get("/{product_id}", response_class=HTMLResponse)
def render_product_details(request: Request, product_id: int, user: dict = Depends(get_current_user), cart: dict = Depends(get_current_cart)):
    logger.info("GET: product page")
    
    product = product_api.get_product_by_id(product_id)

    related_products = product_api.get_random_products_by_type(product.type)

    url = {
        types.LAPTOP: "category/laptops",
        types.SMARTPHONE: "category/smartphones",
        types.MONITOR: "category/monitors",
    }.get(product.type)

    return templates.TemplateResponse("pages/product.html", {"request": request, "user":user, "cart": cart, "product": product, "related_products": related_products, "url":url})

@router.post("/{product_id}", response_class=JSONResponse, response_model=dict)
async def add_to_cart(product_id: int, 
                      product_quantity: int = Form(...), 
                      user: dict = Depends(get_current_user)):

    if not user:
        return JSONResponse(content={"redirect_url": "/user/login"}, status_code=401)
    
    logger.info(f"POST: Adding product {product_id} to cart with quantity {product_quantity}")

    user_id = user["id"]

    quantity_error = None

    if not isinstance(product_quantity, int) or product_quantity <= 0:
        quantity_error = "La cantidad debe ser un número entero positivo"

    stock = product_api.get_product_stock_by_id(product_id)
    
    if product_quantity > stock:
        quantity_error =  "Cantidad introducida superior al stock disponible"

    if quantity_error:
        return JSONResponse(content={"message": quantity_error}, status_code=409)
    

    cart_to_save = cart_domain.Cart(user_id=user_id, product_id=product_id, product_quantity=product_quantity)
    
    try:
        cart = cart_api.add_to_cart(cart_to_save)
        return JSONResponse(status_code=200, content={"message": "Producto añadido al carrito", "cart": cart})
    
    except HTTPException as he:
        logger.warn(exception_messages.ADD_IN_CART_ERROR)
        return JSONResponse(status_code=500, content={"message": str(he)})
    




