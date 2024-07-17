from fastapi import APIRouter, Depends, Request
from fastapi.responses import HTMLResponse
from ..api import product as product_api
from ..utils.jinja import templates
from ..config import types
from ..config.log import logger
from ..middlewares import get_current_user, get_current_cart

router = APIRouter()

@router.get("/{product_id}", response_class=HTMLResponse)
def render_product_details(request: Request, product_id: int, user: dict = Depends(get_current_user), cart: dict = Depends(get_current_cart)):
    logger.info("GET: product page")
    
    product = product_api.get_product_by_id(product_id)

    related_products = product_api.get_random_products_by_type(product.type)

    url = {
        types.LAPTOP: "category/laptops",
        types.SMARTPHONE: "category/smartphones",
        types.MONITOR: "category/monitors",
    }.get(product.type)

    return templates.TemplateResponse("pages/product.html", {"request": request, "user":user, "cart": cart, "product": product, "related_products": related_products, "url":url})
    




