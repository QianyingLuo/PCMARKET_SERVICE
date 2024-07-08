from fastapi import APIRouter, Depends, Form, Request
from fastapi.responses import HTMLResponse, JSONResponse, RedirectResponse

from ..api import cart as cart_api
from ..api import product as product_api
from ..utils.jinja import templates 
from ..config import types
from ..config.log import logger
from ..middlewares import get_current_user, get_current_cart

router = APIRouter()

@router.get("/", response_class=HTMLResponse)
def render_cart(request: Request, 
                user: dict = Depends(get_current_user),
                cart: dict = Depends(get_current_cart)):
    
    logger.info("GET: cart page")

    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)
    
    
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

                cart_details.append({
                    "product_id": item.product_id,
                    "product_quantity": item.product_quantity,
                    "name": product_details.name,
                    "image": product_details.image,
                    "price": price,
                    "subtotal": round(price * item.product_quantity, 2)
                })
        for index in range(len(cart_details)):
            total += cart_details[index]["subtotal"]
                
    return templates.TemplateResponse("pages/cart.html", {"request": request, "user":user, "cart_exists": cart_exists, "cart": cart, "cart": cart_details, "total": total})
