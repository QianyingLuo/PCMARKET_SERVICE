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

@router.get("/", response_class=HTMLResponse)
def render_offers(request: Request): 
    offers = product_api.get_discounted_products()
    return templates.TemplateResponse("pages/offers.html", {"request": request, "offers": offers})
