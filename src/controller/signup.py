import re
from fastapi import APIRouter, HTTPException, Request, Form
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates

from ..domain.user import User
from ..api import user as user_api
from fastapi import Form

router = APIRouter()
templates = Jinja2Templates(directory="src/assets/")

@router.get("/", response_class=HTMLResponse)
def render_signup_page(request: Request):
    return templates.TemplateResponse("pages/signup.html", {"request": request })

@router.post("/validate")
def validate_signup(
    request: Request, 
    name: str = Form(...),
    email: str = Form(...),
    password: str = Form(...),
    confirm_password: str = Form(...),
    address: str = Form(None),
    phone: str = Form(None)
):
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
        return templates.TemplateResponse("pages/signup.html", {"request": request, "http_error": he.detail})

def check(email):
    pat = r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,7}\b'
    return re.match(pat,email)   