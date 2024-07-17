from fastapi import APIRouter, Depends, Request
from fastapi.responses import HTMLResponse, RedirectResponse

from ..api import product as product_api
from ..utils.jinja import templates 
from ..config import types
from ..config.log import logger
from ..middlewares import get_current_user, get_current_cart

router = APIRouter()

@router.get("/", response_class=HTMLResponse)
def render_offers(request: Request, user: dict = Depends(get_current_user), cart: dict = Depends(get_current_cart)): 
    logger.info("GET: Getting all offers")

    user = get_current_user(request)

    offers = product_api.get_discounted_products()
    return templates.TemplateResponse("pages/offers.html", {"request": request, "user": user, "cart":cart, "offers": offers})


@router.get("/favourites", response_class=HTMLResponse)
def render_favourites(request: Request, user: dict = Depends(get_current_user), cart: dict = Depends(get_current_cart)): 
    logger.info("GET: Favourites page")

    if not check_token(request): 
        return RedirectResponse(url="user/login/", status_code=302)

    laptops = product_api.get_top_products_by_type(types.LAPTOP)
    smartphones = product_api.get_top_products_by_type(types.SMARTPHONE)
    monitors = product_api.get_top_products_by_type(types.MONITOR)

    products_by_type = {
        "Portátiles": laptops,
        "Smartphones": smartphones,
        "Monitores": monitors
    }

    category_urls = {
        "Portátiles": "/category/laptops",
        "Smartphones": "/category/smartphones",
        "Monitores": "/category/monitors"
    }

    return templates.TemplateResponse("pages/index.html", {
        "request": request,
        "user": user,
        "cart":cart,
        "products_by_type": products_by_type,
        "category_urls": category_urls
    })

def check_token(request: Request) -> bool:
    if "token" in request.cookies:
        return True
    
    return False

