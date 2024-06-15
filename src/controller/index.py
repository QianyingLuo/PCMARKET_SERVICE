from fastapi import APIRouter, Request
from fastapi.responses import HTMLResponse

from ..api import product as product_api
from ..middlewares import get_current_user
from ..utils.jinja import templates
from ..config import types
from ..config.log import logger

router = APIRouter()
 
@router.get("/", response_class=HTMLResponse)
def render_index(request: Request): 
    logger.info("GET: Index page")

    user = get_current_user(request)
    
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
        "user": user
    })