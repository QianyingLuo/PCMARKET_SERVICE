import os
import logging
from fastapi import APIRouter, Request, Response
from fastapi.responses import HTMLResponse, RedirectResponse
from fastapi.templating import Jinja2Templates
from jinja2 import FileSystemLoader
from ..api import product as product_api
from ..useful.project import ExtendedEnvironment
from ..useful import token


router = APIRouter()

templates = Jinja2Templates(directory="src/assets/")
templates.env = ExtendedEnvironment(loader=FileSystemLoader("src/assets/"))
templates.env.filters['truncate'] = templates.env.truncate

SECRET_KEY = os.environ.get("SECRET_KEY")
ALGORITHM = os.environ.get("ALGORITHM")

    
@router.get("/", response_class=HTMLResponse)
def render_index(request: Request, response: Response): 
    user = token.get_current_user(request)
    if user == "expired":
        response.delete_cookie("token")
        user = None

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
        "category_urls": category_urls,
        "user": user
    })