from fastapi import APIRouter, Depends, Request
from fastapi.responses import HTMLResponse

from ..api import product as product_api
from ..utils.jinja import templates 
from ..config.log import logger
from ..middlewares import get_current_user, get_current_cart, get_current_favorite

router = APIRouter()

@router.get("/", response_class=HTMLResponse)
def render_offers(request: Request, 
                  user: dict = Depends(get_current_user), 
                  favorite_navbar: dict = Depends(get_current_favorite), 
                  cart: dict = Depends(get_current_cart)): 
    
    logger.info("GET: Getting all offers")

    offers = product_api.get_discounted_products()
    
    return templates.TemplateResponse("pages/offers.html", {"request": request, "user": user, "favorite_navbar": favorite_navbar, "cart":cart, "offers": offers})
