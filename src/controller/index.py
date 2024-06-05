from fastapi import APIRouter, Request
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates
from jinja2 import Environment, FileSystemLoader
from ..api import product as product_api
from ..useful.project import ExtendedEnvironment

router = APIRouter()

templates = Jinja2Templates(directory="src/assets/")
templates.env = ExtendedEnvironment(loader=FileSystemLoader("src/assets/"))
templates.env.filters['truncate'] = templates.env.truncate

@router.get("/", response_class=HTMLResponse)
def render_index(request: Request): 
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
