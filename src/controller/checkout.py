from fastapi import APIRouter, Depends, Form, HTTPException, Request
from fastapi.responses import HTMLResponse, RedirectResponse

from ..api import cart as cart_api
from ..api import delivery as delivery_api
from ..utils.jinja import templates 
from ..config.log import logger
from ..middlewares import get_current_user, get_current_cart
from ..domain.delivery import Delivery

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