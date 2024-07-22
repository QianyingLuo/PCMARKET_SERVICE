from fastapi import APIRouter, Depends, HTTPException, Request
from fastapi.responses import HTMLResponse, RedirectResponse, JSONResponse

from ..api import favorite as favorite_api
from ..api import product as product_api
from ..utils.jinja import templates
from ..config import exception_messages
from ..config.log import logger
from ..domain import favorite as favorite_domain
from ..middlewares import get_current_user, get_current_cart, get_current_favorite

router = APIRouter()

@router.get("/", response_class=HTMLResponse)
def render_favourites(request: Request, 
                      user: dict = Depends(get_current_user), 
                      favorite_navbar: dict = Depends(get_current_favorite), 
                      cart: dict = Depends(get_current_cart)): 
    
    logger.info("GET: favorites page")

    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)

    favorite = None
    
    user_id = user["id"]
    favorite = favorite_api.check_if_favorite_list_has_items(user_id)

    favorite_products = favorite_api.get_products_in_favorites_by_user_id(user_id)

    return templates.TemplateResponse("pages/favorites.html", {
        "request": request,
        "user": user,
        "favorite": favorite, 
        "cart": cart,
        "favorite_navbar": favorite_navbar,
        "favorite_products": favorite_products
    })


@router.post("/{product_id}", response_class=JSONResponse, response_model=dict)
async def add_or_remove_from_favorites(product_id: int, 
                          user: dict = Depends(get_current_user)):

    logger.info(f"POST: Adding/Removing {product_id} from favorites")

    product = product_api.get_product_by_id(product_id)

    if product:
        if not user:
            return JSONResponse(content={"redirect_url": "/user/login"}, status_code=401)
        
        user_id = user["id"]

        product_in_favorites = favorite_api.check_product_exists_in_favorites(user_id, product_id)

        if product_in_favorites:
            favorite = favorite_api.remove_from_favorites(user_id, product_id)
            favorite_exists = favorite_api.check_if_favorite_list_has_items(user_id)
            return JSONResponse(status_code=200, content={"message": "Producto eliminado de mis favoritos", "has_favorite_items": favorite_exists})

        else:
            product_to_save = favorite_domain.Favorite(user_id=user_id, product_id=product_id)

            favorite = favorite_api.add_to_favorites(product_to_save)
            favorite_dict = {
                "user_id": favorite.user_id,
                "product_id": favorite.product_id,
            }

            return JSONResponse(status_code=200, content={"message": "Producto añadido a mis favoritos", "favorite":favorite_dict, "has_favorite_items": True})
    else:
        raise HTTPException(status_code=404, detail=exception_messages.PRODUCT_NOT_FOUND)
    
@router.delete("/{product_id}", response_class=JSONResponse, response_model=dict)
async def delete_product_in_favorites(product_id: int, 
                                      user: dict = Depends(get_current_user)):

    logger.info("POST: Removing {product_id} from favorites")
    
    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)
    
    logger.info(f"DELETE: Deleting product {product_id} from favorites")

    user_id = user["id"]
    
    favorite_api.remove_from_favorites(user_id, product_id)
    favorite_exists = favorite_api.check_if_favorite_list_has_items(user_id)

    is_empty = False
    if not favorite_exists:
        is_empty = True

    return JSONResponse(status_code=200, content={
        "is_empty": is_empty
    })
    