from fastapi import APIRouter, Request
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates
from jinja2 import Environment, FileSystemLoader
from ..api import product as product_api

router = APIRouter()

class ExtendedEnvironment(Environment):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.globals.update({
            'int': int,
        })

templates = Jinja2Templates(directory="src/assets/")
templates.env = ExtendedEnvironment(loader=FileSystemLoader("src/assets/"))


@router.get("/laptops", response_class=HTMLResponse)
def render_laptops(request: Request): 
    laptops = product_api.get_products_by_type("portatil")
    product_type = "Portátiles"
    return templates.TemplateResponse("pages/category.html", {"request": request, "products": laptops, "type": product_type})

@router.get("/smartphones", response_class=HTMLResponse)
def render_laptops(request: Request): 
    smartphones = product_api.get_products_by_type("smartphone")
    product_type = "Smartphones"
    return templates.TemplateResponse("pages/category.html", {"request": request, "products": smartphones, "type": product_type})

@router.get("/monitors", response_class=HTMLResponse)
def render_laptops(request: Request): 
    monitors = product_api.get_products_by_type("monitor")
    product_type = "Monitores"
    return templates.TemplateResponse("pages/category.html", {"request": request, "products": monitors, "type": product_type})