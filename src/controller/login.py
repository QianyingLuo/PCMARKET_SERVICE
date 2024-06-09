import os
from fastapi import APIRouter, Form, HTTPException, Request, Response
from fastapi.responses import HTMLResponse, RedirectResponse
from fastapi.templating import Jinja2Templates
from ..api import user as user_api
from ..domain import user as user_domain
from ..useful import token

router = APIRouter()
templates = Jinja2Templates(directory="src/assets/")

SECRET_KEY = os.environ.get("SECRET_KEY")
ALGORITHM = os.environ.get("ALGORITHM")
ACCESS_TOKEN_EXPIRE_MINUTES = int(os.environ.get("ACCESS_TOKEN_EXPIRE_MINUTES", 1))

@router.get("/", response_class=HTMLResponse)
def render_login_page(request: Request, response: Response):
    current_user_token = token.get_current_user(request)
    if "token" in request.cookies and current_user_token != "expired":
        return RedirectResponse(url="/", status_code=302)
    if current_user_token == "expired":
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
