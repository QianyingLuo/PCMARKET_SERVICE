import os
from fastapi import APIRouter, Form, HTTPException, Request, Response
from fastapi.responses import HTMLResponse, RedirectResponse
from fastapi.templating import Jinja2Templates
from ..api import user as user_api
from ..domain import user as user_domain
from ..useful import verify_token

router = APIRouter()
templates = Jinja2Templates(directory="src/assets/")

SECRET_KEY = os.environ.get("SECRET_KEY")
ALGORITHM = os.environ.get("ALGORITHM")
ACCESS_TOKEN_EXPIRE_MINUTES = int(os.environ.get("ACCESS_TOKEN_EXPIRE_MINUTES", 1))

@router.get("/", response_class=HTMLResponse)
def render_login_page(request: Request, response: Response):
    current_user_token = verify_token.get_current_user(request)
    if current_user_token:
        return RedirectResponse(url="/", status_code=302)
    if not current_user_token and request.cookies.get("token"):
        response.delete_cookie("token")

    return templates.TemplateResponse("pages/login.html", {"request": request })

    
@router.post("/", response_class=HTMLResponse)
def do_login(
    request: Request,
    response: Response,  
    email: str = Form(...),
    password: str = Form(...),
):
    try:
        user_login = user_domain.UserLogin(email=email, password=password)
        token = user_api.do_login(user_login)
        response = RedirectResponse(url="/", status_code=302)
        response.set_cookie(key="token", value=token, httponly=True)
        return response

    except HTTPException as e:
        return templates.TemplateResponse("pages/login.html", status_code=401 ,context={"request": request, "error": e.detail})
    
    except Exception as e:
        print(e)
        return templates.TemplateResponse("pages/login.html", status_code=500 ,context={"request": request, "error": "Algo salió mal..."})

