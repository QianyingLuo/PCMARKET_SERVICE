from fastapi import APIRouter, Request
from fastapi.responses import HTMLResponse
from ..api import product as product_api
from ..utils.jinja import templates
from ..config import types
from ..config.log import logger

router = APIRouter()

@router.get("/{product_id}", response_class=HTMLResponse)
def read_product(request: Request, product_id: int):
    logger.info("GET: product page")
    
    product = product_api.get_product_by_id(product_id)

    related_products = product_api.get_random_products_by_type(product.type)

    if product.type == types.LAPTOP:
        url = "category/laptops"
    elif product.type == types.SMARTPHONE:
        url = "category/smartphones"
    elif product.type == types.MONITOR:
        url = "category/monitors"

    return templates.TemplateResponse("pages/product.html", {"request": request, "product": product, "related_products": related_products, "url":url})