from fastapi import APIRouter, Depends, Form, Request, Body
from fastapi.responses import HTMLResponse, JSONResponse, RedirectResponse
import stripe

from ..api import cart as cart_api
from ..api import product as product_api
from ..api import delivery as delivery_api
from ..api import order as order_api
from ..utils.jinja import templates 
from ..config.log import logger
from ..middlewares import get_current_user, get_current_cart, get_current_favorite
from ..domain.delivery import Delivery
from ..domain import order_cart as order_cart_domain
from ..domain import order as order_domain


router = APIRouter()

@router.get("/delivery-payment", response_class=HTMLResponse)
def render_delivery_page(request: Request, 
                        user: dict = Depends(get_current_user),
                        favorite_navbar: dict = Depends(get_current_favorite), 
                        cart: dict = Depends(get_current_cart)):
    
    logger.info("GET: Delivery page")
    
    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)

    user_id = user["id"]
    cart_exists = cart_api.get_cart_exists_by_user_id(user_id)

    if not cart_exists:
        return RedirectResponse(url="/cart", status_code=302)

    return templates.TemplateResponse("pages/delivery.html", {"request": request, "user":user, "favorite_navbar": favorite_navbar, "cart_exists": cart_exists, "cart": cart})


@router.post("/delivery", response_class=JSONResponse)
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

    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)
    
    user_id = user["id"]

    phone_error = None


    if not phone.isdigit():
        phone_error = "¡Ay! Tu número de teléfono debe contener solo números"

    if phone_error:
        return JSONResponse(content={"error": phone_error}, status_code=409)

    delivery_info_to_save = Delivery(user_id=user_id, 
                                     first_name=first_name, 
                                     last_name=last_name, 
                                     address=address, 
                                     complement_address=complement_address,
                                     postcode=postcode,
                                     city=city,
                                     phone=phone,
                                     country=country)

    delivery_api.save(delivery_info_to_save)

    total = cart_api.get_total_user_cart_price(user_id)

    intent_client_secret = stripe.PaymentIntent.create(
            amount=int(total * 100),
            currency='eur'
        )
    return JSONResponse(content={"clientSecret": intent_client_secret['client_secret']}, status_code=200)


@router.post("/", response_class=JSONResponse)
def create_order(
    status_data: order_domain.OrderStatusParameter = Body(...),
    user: dict = Depends(get_current_user)):
    
    user_id = user["id"]
 
    temporary_cart_items = cart_api.get_cart_by_user_id(user_id)

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

        cart_api.save_temporary_cart_in_order_cart(cart_to_save)

    
    total = cart_api.get_total_from_subtotal_in_order_cart(user_id)

    order_to_save = order_domain.Order(
        user_id=user_id,
        amount=total,
        status=status_data.status
    )

    order_id = order_api.save_order(order_to_save)
    cart_api.update_order_id_in_order_cart(user_id, order_id) 
    order_api.delete_temporary_cart_by_user_id(user_id)
    order_api.delete_delivery_info_by_user_id(user_id)

    redirect_url = "/" if status_data.status.PAID else "/"
    return JSONResponse(content={"redirect_url": redirect_url}, status_code=200)
