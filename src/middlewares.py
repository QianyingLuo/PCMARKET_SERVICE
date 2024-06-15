from typing import Any
from fastapi import FastAPI, Request, Response
from starlette.middleware.base import BaseHTTPMiddleware, RequestResponseEndpoint
from jose import ExpiredSignatureError, JWTError, jwt

from . import config

def get_current_user(request: Request) -> dict[str, Any]:
    return request.state.data.get("user", None)

class CheckLoggedUserMiddleware(BaseHTTPMiddleware):
    def check_user_token(self, request: Request):
        token = request.cookies.get("token")
        if token is None:
            return None

        try:
            payload = jwt.decode(token, config.SECRET_KEY, algorithms=[config.ALGORITHM])

            username: str = payload.get("name")
            if username is None:
                return None

            return {"name": username}
        
        except ExpiredSignatureError:
            return None
        
        except JWTError as e:
            return None
    
    async def dispatch(self, request: Request, call_next: RequestResponseEndpoint) -> Response:
        user_data = self.check_user_token(request)

        if user_data:
            request.state.data = {"user": user_data}
        else:
            request.state.data = {}

        response = await call_next(request)

        if not user_data and request.cookies.get("token"):
            response.delete_cookie("token")

        return response


def set_middlewares(app: FastAPI) -> None:
    app.add_middleware(CheckLoggedUserMiddleware)