from fastapi import APIRouter, Request
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates
from jinja2 import Environment, FileSystemLoader
from ..api import product as product_api
from ..domain import product as product_domain

router = APIRouter()

class ExtendedEnvironment(Environment):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.globals.update({
            'int': int,
        })
    
    def truncate(self, s, length=120, suffix='...'):
      if len(s) <= length:
          return s
      else:
          return s[:length].rstrip() + suffix

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