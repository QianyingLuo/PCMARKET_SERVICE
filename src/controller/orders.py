from fastapi import APIRouter, Depends, Form, Request
from fastapi.responses import HTMLResponse, RedirectResponse

from ..api import order as order_api
from ..utils.jinja import templates 
from ..config.log import logger
from ..middlewares import get_current_user, get_current_cart, get_current_favorite

router = APIRouter()

@router.get("/overview", response_class=HTMLResponse)
def render_orders(request: Request, 
                    user: dict = Depends(get_current_user),
                    favorite_navbar: dict = Depends(get_current_favorite),
                    cart: dict = Depends(get_current_cart)):
    
    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)

    logger.info("GET: orders page")
    
    user_id = user["id"]

    order_exists = order_api.get_order_exists_by_user_id(user_id)

    orders = order_api.get_orders_by_user_id(user_id)

    for order in orders:
        order_id = order["id"]
        order["product_reference_count"] = order_api.product_reference_count(order_id)

    return templates.TemplateResponse("pages/orders.html", {"request": request, 
                                                                  "user": user, 
                                                                  "favorite_navbar": favorite_navbar, 
                                                                  "cart": cart, 
                                                                  "order_exists": order_exists,
                                                                  "orders": orders})

@router.get("/detail/{order_id}", response_class=HTMLResponse)
def render_order_detail(request: Request, 
                        order_id: int, 
                        user: dict = Depends(get_current_user),
                        favorite_navbar: dict = Depends(get_current_favorite),
                        cart: dict = Depends(get_current_cart)):
    
    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)

    logger.info(f"GET: order {order_id} detail page")
    
    order = order_api.get_order_by_order_id(order_id)
    products = order_api.get_products_by_order_id(order_id)

    return templates.TemplateResponse("pages/order_detail.html", {"request": request, 
                                                                  "user": user, 
                                                                  "favorite_navbar": favorite_navbar, 
                                                                  "cart": cart, 
                                                                  "order": order,
                                                                  "products": products})
