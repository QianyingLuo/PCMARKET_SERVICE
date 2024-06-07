from datetime import timedelta
from fastapi import APIRouter, Depends, Form, HTTPException, status, Request
from fastapi.responses import HTMLResponse, RedirectResponse
from fastapi.security import OAuth2PasswordRequestForm
from fastapi.templating import Jinja2Templates

from ..controller.index import render_index
from ..api import user as user_api
from ..domain import user as user_domain


router = APIRouter()


templates = Jinja2Templates(directory="src/assets/")


@router.get("/", response_class=HTMLResponse)
def render_login_page(request: Request):
    if "token" in request.cookies:
        return RedirectResponse(url="/", status_code=302)

    return templates.TemplateResponse("pages/login.html", {"request": request })

@router.post("/")
def do_login(
    request: Request, 
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


'''
async def login_for_access_token(form_data: OAuth2PasswordRequestForm = Depends()):
    user = user_api.authenticate_user(form_data.username, form_data.password)
    if not user:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Correo o contraseña inválida",
            headers={"WWW-Authenticate": "Bearer"},
        )
    access_token_expires = timedelta(minutes=user_api.ACCESS_TOKEN_EXPIRE_MINUTES)
    access_token = user_api.create_access_token(
        data={"sub": user.email}, expires_delta=access_token_expires
    )
    return {"access_token": access_token, "token_type": "bearer"}
'''
