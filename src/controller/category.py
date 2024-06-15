from fastapi import APIRouter, Request
from fastapi.responses import HTMLResponse

from ..api import product as product_api
from ..config import types
from ..utils.jinja import templates
from ..config.log import logger

router = APIRouter()

@router.get("/laptops", response_class=HTMLResponse)
def render_laptops(request: Request): 
    logger.info("GET: Getting all laptops")
    laptops = product_api.get_products_by_type(types.LAPTOP)
    product_type = "Portátiles"
    return templates.TemplateResponse("pages/category.html", {"request": request, "products": laptops, "type": product_type})


@router.get("/smartphones", response_class=HTMLResponse)
def render_smartphones(request: Request): 
    logger.info("GET: Getting all smartphones")
    smartphones = product_api.get_products_by_type(types.SMARTPHONE)
    product_type = "Smartphones"
    return templates.TemplateResponse("pages/category.html", {"request": request, "products": smartphones, "type": product_type})


@router.get("/monitors", response_class=HTMLResponse)
def render_monitors(request: Request): 
    logger.info("GET: Getting all monitors")
    monitors = product_api.get_products_by_type(types.MONITOR)
    product_type = "Monitores"
    return templates.TemplateResponse("pages/category.html", {"request": request, "products": monitors, "type": product_type})
