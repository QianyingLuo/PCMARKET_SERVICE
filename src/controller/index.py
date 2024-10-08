from fastapi import APIRouter, Depends, Request
from fastapi.responses import HTMLResponse

from ..api import product as product_api
from ..middlewares import get_current_user, get_current_cart, get_current_favorite
from ..utils.jinja import templates
from ..config import types
from ..config.log import logger

router = APIRouter()
 
@router.get("/", response_class=HTMLResponse)
def render_index(request: Request, 
                 user: dict = Depends(get_current_user), 
                 favorite_navbar: dict = Depends(get_current_favorite),
                 cart: dict = Depends(get_current_cart)): 
    
    logger.info("GET: Index page")
    
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
        "products_by_type": products_by_type,
        "category_urls": category_urls,
        "user": user,
        "favorite_navbar": favorite_navbar,
        "cart": cart
    })