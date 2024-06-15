from fastapi import APIRouter, HTTPException, Request
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates
from jinja2 import FileSystemLoader
from ..api import product as product_api
from ..useful.project import ExtendedEnvironment


router = APIRouter()

templates = Jinja2Templates(directory="src/assets/")
templates.env = ExtendedEnvironment(loader=FileSystemLoader("src/assets/"))

@router.get("/{product_id}", response_class=HTMLResponse)
def read_product(request: Request, product_id: int):
    product = product_api.get_product_by_id(product_id)

    if product is None:
        raise HTTPException(status_code=404, detail="Product not found")
    
    related_products = product_api.get_random_products_by_type(product.type)
    if product.type == "portatil":
        url = "category/laptops"
    elif product.type == "smartphone":
        url = "category/smartphones"
    elif product.type == "monitor":
        url = "category/monitors"

    return templates.TemplateResponse("pages/product.html", {"request": request, "product": product, "related_products": related_products, "url":url})