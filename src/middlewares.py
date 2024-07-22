from typing import Any, Optional
from fastapi import FastAPI, Request, Response
from starlette.middleware.base import BaseHTTPMiddleware, RequestResponseEndpoint
from jose import ExpiredSignatureError, JWTError, jwt

from . import config
from .api import cart as cart_api
from .api import favorite as favorite_api


def get_current_user(request: Request) -> Optional[dict[str, Any]]:
    if hasattr(request.state, 'data') and request.state.data:
        return request.state.data.get("user", None)
    return None

def get_current_cart(request: Request) -> Optional[Any]:
    if hasattr(request.state, 'data') and request.state.data:
        return request.state.data.get("cart", None)
    return None

def get_current_favorite(request: Request) -> Optional[Any]:
    if hasattr(request.state, 'data') and request.state.data:
        return request.state.data.get("favorite", None)
    return None

class CheckLoggedUserCartFavoriteMiddleware(BaseHTTPMiddleware):
    def check_user_token(self, request: Request) -> Optional[dict[str, Any]]: 
        token = request.cookies.get("token")
        if token is None:
            return None

        try:
            payload = jwt.decode(token, config.SECRET_KEY, algorithms=[config.ALGORITHM])

            user_id: int = payload.get("id")
            user_name: str = payload.get("name")

            if user_id is None or user_name is None:
                return None
            else:
                info = {"id": user_id, "name": user_name}
                cart_exists = cart_api.get_cart_by_user_id(user_id)
                favorite_exists = favorite_api.check_if_favorite_list_has_items(user_id)

                if cart_exists:
                    info["cart"] = cart_exists
                if favorite_exists:
                    info["favorite"] = favorite_exists
                
                return info
        
        except ExpiredSignatureError:
            return None
        
        except JWTError as e:
            return None
    
    
    async def dispatch(self, request: Request, call_next: RequestResponseEndpoint) -> Response:
        if not hasattr(request.state, 'data'):
            request.state.data = {}

        user_data = self.check_user_token(request)

        if user_data:
            request.state.data["user"] = user_data
            
            if "cart" in user_data:
                request.state.data["cart"] = user_data["cart"]
            if "favorite" in user_data:
                request.state.data["favorite"] = user_data["favorite"]
        else:
            request.state.data = None

        response = await call_next(request)

        if not user_data and request.cookies.get("token"):
            response.delete_cookie("token")

        return response
    
def set_middlewares(app: FastAPI) -> None:
    app.add_middleware(CheckLoggedUserCartFavoriteMiddleware)