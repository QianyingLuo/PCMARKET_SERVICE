from fastapi import APIRouter, Request
from fastapi.responses import HTMLResponse, RedirectResponse
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

@router.get("/", response_class=HTMLResponse)
def render_offers(request: Request): 
    offers = product_api.get_discounted_products()
    return templates.TemplateResponse("pages/offers.html", {"request": request, "offers": offers})

@router.get("/favourites", response_class=HTMLResponse)
def render_favourites(request: Request): 

    if not check_token(request): 
        return RedirectResponse(url="/login/", status_code=302)

    laptops = product_api.get_top_products_by_type("portatil")
    smartphones = product_api.get_top_products_by_type("smartphone")
    monitors = product_api.get_top_products_by_type("monitor")

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
        "category_urls": category_urls
    })

def check_token(request: Request) -> bool:
    if "token" in request.cookies:
        return True
    
    return False

