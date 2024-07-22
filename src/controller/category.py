from fastapi import APIRouter, Depends, Request
from fastapi.responses import HTMLResponse

from ..api import product as product_api
from ..config import types
from ..utils.jinja import templates
from ..config.log import logger
from ..middlewares import get_current_user, get_current_cart, get_current_favorite

router = APIRouter()

@router.get("/laptops", response_class=HTMLResponse)
def render_laptops(request: Request, 
                   user: dict = Depends(get_current_user), 
                   favorite_navbar: dict = Depends(get_current_favorite), 
                   cart: dict = Depends(get_current_cart)): 
    
    logger.info("GET: Getting all laptops")

    laptops = product_api.get_products_by_type(types.LAPTOP)
    product_type = "Portátiles"
    return templates.TemplateResponse("pages/category.html", {"request": request, "user": user, "favorite_navbar": favorite_navbar, "cart": cart, "products": laptops, "type": product_type})


@router.get("/smartphones", response_class=HTMLResponse)
def render_smartphones(request: Request, 
                       user: dict = Depends(get_current_user),
                       favorite_navbar: dict = Depends(get_current_favorite),
                       cart: dict = Depends(get_current_cart)): 
    
    logger.info("GET: Getting all smartphones")

    smartphones = product_api.get_products_by_type(types.SMARTPHONE)
    product_type = "Smartphones"
    return templates.TemplateResponse("pages/category.html", {"request": request, "user": user, "favorite_navbar": favorite_navbar, "cart": cart, "products": smartphones, "type": product_type})


@router.get("/monitors", response_class=HTMLResponse)
def render_monitors(request: Request, 
                    user: dict = Depends(get_current_user),
                    favorite_navbar: dict = Depends(get_current_favorite),
                    cart: dict = Depends(get_current_cart)): 
    
    logger.info("GET: Getting all monitors")

    monitors = product_api.get_products_by_type(types.MONITOR)
    product_type = "Monitores"
    return templates.TemplateResponse("pages/category.html", {"request": request, "user": user, "favorite_navbar": favorite_navbar, "cart": cart, "products": monitors, "type": product_type})
