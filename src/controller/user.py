import re

from fastapi import APIRouter, Form, HTTPException, Request, Response
from fastapi.responses import HTMLResponse, RedirectResponse

from ..api import user as user_api
from ..domain import user as user_domain
from ..middlewares import get_current_user
from ..domain.user import User
from ..api import user as user_api
from ..utils.jinja import templates
from ..config.log import logger

router = APIRouter()


@router.get("/signup", response_class=HTMLResponse)
def render_signup_page(request: Request):
    logger.info("GET: Register page")

    user = get_current_user(request)

    if user:
        return RedirectResponse(url="/", status_code=302)
    
    return templates.TemplateResponse("pages/signup.html", {"request": request})


@router.get("/login", response_class=HTMLResponse)
def render_login_page(request: Request, response: Response):
    logger.info("GET: Login page")

    user = get_current_user(request)

    if user:
        return RedirectResponse(url="/", status_code=302)

    return templates.TemplateResponse("pages/login.html", {"request": request })


@router.get("/logout")
async def logout_get(request: Request, response: Response):
    logger.info("GET: Logout page")

    user = get_current_user(request)

    if user:
        response.delete_cookie("token")
        response.headers["Location"] = "/"
        response.status_code = 302
    else:
        return RedirectResponse(url="/", status_code=302)
    
    return response


@router.post("/signup")
def validate_signup(
    request: Request, 
    name: str = Form(...),
    email: str = Form(...),
    password: str = Form(...),
    confirm_password: str = Form(...),
    address: str = Form(None),
    phone: str = Form(None)
):
    logger.info("POST: Validating signup data")

    def check(email):
        pat = r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,7}\b'
        return re.match(pat,email)  

    name_length_error = None
    email_format_error = None
    password_length_error = None
    confirm_password_error = None

    if len(name) < 8 or len(name) > 50:
        name_length_error = "¡Ay! Tu nombre debe tener entre 8 y 50 caracteres"

    if not check(email):
        email_format_error = "¡Ojo! El formato del correo es incorrecto"

    if len(password) < 6 or len(password) > 64:
        password_length_error = "¡Ay! Tu contraseña debe tener entre 6 y 64 caracteres"

    if password != confirm_password:
        confirm_password_error = "¡Ojo! Debe ser igual que tu contraseña"

    if name_length_error or email_format_error or password_length_error or confirm_password_error:
        return templates.TemplateResponse("pages/signup.html", {"request": request, 
                                                                "name_length_error": name_length_error,
                                                                "email_format_error": email_format_error,
                                                                "password_length_error": password_length_error,
                                                                "confirm_password_error": confirm_password_error,
                                                                })
    
    user_to_save = User(name=name, email=email, password=password, address=address, phone=phone)

    try:
        user_api.save(user_to_save)
        return templates.TemplateResponse("pages/login.html", {"request": request})

    except HTTPException as he:
        return templates.TemplateResponse("pages/signup.html", {"request": request, "error": he.detail}) 
    
    

@router.post("/login", response_class=HTMLResponse)
def do_login(
    request: Request,
    response: Response,  
    email: str = Form(...),
    password: str = Form(...),
):
    logger.info("POST: User login")

    try:
        user_login = user_domain.UserLogin(email=email, password=password)
        token = user_api.do_login(user_login)
        response = RedirectResponse(url="/", status_code=302)
        response.set_cookie(key="token", value=token, httponly=True)
        return response
    
    except HTTPException as e:
        return templates.TemplateResponse("pages/login.html", status_code=401 ,context={"request": request, "error": e.detail})


