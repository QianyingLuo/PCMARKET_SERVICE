from fastapi import APIRouter, Depends, Request
from fastapi.responses import HTMLResponse, RedirectResponse

from ..api import order as order_api
from ..utils.jinja import templates 
from ..config.log import logger
from ..middlewares import get_current_user, get_current_cart, get_current_favorite

router = APIRouter()

@router.get("/paid", response_class=HTMLResponse)
def render_order_paid(request: Request, 
                      user: dict = Depends(get_current_user),
                      favorite_navbar: dict = Depends(get_current_favorite),
                      cart: dict = Depends(get_current_cart)):
    
    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)

    logger.info(f"GET: paid order confirmation page")

    return templates.TemplateResponse("pages/order_paid_successfully.html", {"request": request, 
                                                                            "user": user, 
                                                                            "favorite_navbar": favorite_navbar, 
                                                                            "cart": cart})


@router.get("/pending-payment", response_class=HTMLResponse)
def render_order_paid(request: Request, 
                      user: dict = Depends(get_current_user),
                      favorite_navbar: dict = Depends(get_current_favorite),
                      cart: dict = Depends(get_current_cart)):
    
    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)

    logger.info(f"GET: pending payment order confirmation page")

    return templates.TemplateResponse("pages/order_pending_payment.html", {"request": request, 
                                                                            "user": user, 
                                                                            "favorite_navbar": favorite_navbar, 
                                                                            "cart": cart})