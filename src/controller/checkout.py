from fastapi import APIRouter, Depends, Form, HTTPException, Request
from fastapi.responses import HTMLResponse, RedirectResponse

from ..api import cart as cart_api
from ..api import product as product_api
from ..api import delivery as delivery_api
from ..api import order as order_api
from ..utils.jinja import templates 
from ..config.log import logger
from ..config import exception_messages
from ..middlewares import get_current_user, get_current_cart
from ..domain.delivery import Delivery
from ..domain import order_cart as order_cart_domain
from ..domain import order as order_domain

router = APIRouter()

@router.get("/delivery", response_class=HTMLResponse)
def render_delivery_page(request: Request, 
                        user: dict = Depends(get_current_user),
                        cart: dict = Depends(get_current_cart)):
    logger.info("GET: Delivery page")
    
    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)

    user_id = user["id"]
    cart_exists = cart_api.get_cart_exists_by_user_id(user_id)

    if not cart_exists:
        return RedirectResponse(url="/cart", status_code=302)

    return templates.TemplateResponse("pages/delivery.html", {"request": request, "user":user, "cart_exists": cart_exists, "cart": cart})


@router.get("/payment", response_class=HTMLResponse)
def render_payment_page(request: Request, 
                        user: dict = Depends(get_current_user),
                        cart: dict = Depends(get_current_cart)):
    logger.info("GET: Payment page")
    
    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)

    user_id = user["id"]
    cart_exists = cart_api.get_cart_exists_by_user_id(user_id)

    if not cart_exists:
        return RedirectResponse(url="/cart", status_code=302)

    return templates.TemplateResponse("pages/payment.html", {"request": request, "user":user, "cart_exists": cart_exists, "cart": cart})


@router.post("/delivery", response_class=HTMLResponse)
def save_delivery_info(
    request: Request, 
    first_name: str = Form(...),
    last_name: str = Form(...),
    address: str = Form(...),
    complement_address: str = Form(None),
    postcode: str = Form(...),
    city: str = Form(...),
    phone: str = Form(...),
    country: str = Form(...),
    user: dict = Depends(get_current_user)
):
    logger.info("POST: Saving delivery data")
        
    user_id = user["id"]

    errors = {}

    if complement_address and len(complement_address) > 30:
        errors['complement_address_error'] = "¡Ay! Tu dirección complementaria debe tener menos de 30 caracteres"

    if not phone.isdigit():
        errors['phone_error'] = "¡Ay! Tu número de teléfono debe contener solo números"

    if errors:
        return templates.TemplateResponse("pages/delivery.html", {"request": request, **errors})
    

    delivery_info_to_save = Delivery(user_id=user_id, 
                                     first_name=first_name, 
                                     last_name=last_name, 
                                     address=address, 
                                     complement_address=complement_address,
                                     postcode=postcode,
                                     city=city,
                                     phone=phone,
                                     country=country)

    try:
        delivery_api.save(delivery_info_to_save)
        return RedirectResponse(url="/checkout/payment", status_code=302)

    except HTTPException as he:
        return templates.TemplateResponse("pages/delivery.html", {"request": request, "error": he.detail}) 


@router.post("/", response_class=HTMLResponse)
def create_order(request: Request, user: dict = Depends(get_current_user)):
    
    user_id = user["id"]
 
    temporary_cart_items = cart_api.get_cart_by_user_id(user_id)

    if not temporary_cart_items:
        raise HTTPException(status_code=404, detail=exception_messages.TEMPORARY_CART_NOT_FOUND)

    for item in temporary_cart_items:

        product_details = product_api.get_product_by_id(item.product_id)
        if product_details:
            if product_details.discount_decimal != 0:
                price = round(product_details.price * (1 - product_details.discount_decimal), 2)
            else:
                price = product_details.price
            subtotal = price * item.product_quantity

        cart_to_save = order_cart_domain.Order_cart(
            user_id=user_id,
            product_id=item.product_id,
            product_quantity=item.product_quantity,
            subtotal=subtotal,
            order_id=None
        )
        try:
            cart_api.save_temporary_cart_in_order_cart(cart_to_save)

        except HTTPException as he:
            return templates.TemplateResponse("pages/payment.html", {"request": request, "error": he.detail})
    
    total = cart_api.get_total_from_subtotal_in_order_cart(user_id)

    order_to_save = order_domain.Order(
        user_id=user_id,
        amount=total
    )

    try:
        order_id = order_api.save_order(order_to_save)
        cart_api.update_order_id_in_order_cart(user_id, order_id)
        order_api.save_delivery_info_in_order(user_id, order_id) 
        order_api.delete_temporary_cart_by_user_id(user_id)
        order_api.delete_delivery_info_by_user_id(user_id)

    except HTTPException as he:
        return templates.TemplateResponse("pages/payment.html", {"request": request, "error": he.detail})

    return RedirectResponse(url="/", status_code=302)
