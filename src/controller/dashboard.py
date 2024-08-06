import os
import shutil
from fastapi import APIRouter, Request, UploadFile, HTTPException, Response, Depends, Form, File
from fastapi.responses import HTMLResponse, RedirectResponse, JSONResponse

from .. import config
from ..api import product as product_api
from ..api import user as user_api
from ..domain.user import User
from ..domain import product as product_domain
from ..middlewares import get_current_user
from ..utils.jinja import templates
from ..config.log import logger

router = APIRouter()

@router.get("/products", response_class=HTMLResponse)
def render_dashboard_products(request: Request,
                     user: dict = Depends(get_current_user)): 
    
    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)
     
    logger.info("GET: dashboard products page")

    products = product_api.get_all()

    return templates.TemplateResponse("pages/dashboard_products.html", {"request": request, "user": user, "products": products})


@router.get("/clients", response_class=HTMLResponse)
def render_dashboard_clients(request: Request,
                             user: dict = Depends(get_current_user)): 
    
    if not user:
        return RedirectResponse(url="/user/login/", status_code=302)
     
    logger.info("GET: dashboard clients page")

    users = user_api.get_all()

    return templates.TemplateResponse("pages/dashboard_clients.html", {"request": request, "user": user, "users": users})


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


@router.post("/add_product", response_class=JSONResponse, response_model=dict)
async def add_product(user: dict = Depends(get_current_user),
                      name: str = Form(...),
                      description: str = Form(...),
                      type: str = Form(...),
                      brand: str = Form(...),
                      stock: int = Form(...),
                      price: float = Form(...),
                      discount_decimal: float = Form(...),
                      stars: float = Form(...),
                      image: UploadFile = File(...)):
                      
    if not user:
        return JSONResponse(content={"redirect_url": "/user/login"}, status_code=401)

    logger.info(f"POST: Adding product in database")

    if not os.path.exists(config.UPLOAD_FOLDER):
        os.makedirs(config.UPLOAD_FOLDER)

    image_path = os.path.join(config.UPLOAD_FOLDER, image.filename)
    
    try:
        with open(image_path, "wb") as buffer:
            shutil.copyfileobj(image.file, buffer)
    except Exception as e:
        logger.error(f"Error saving the image: {str(e)}")
        return JSONResponse(status_code=500, content={"error": "Error saving the image"})

    url_image_path = os.path.join("static/images", image.filename).replace(os.sep, '/')

    input_error = None

    if any(value < 0 for value in [stock, price, discount_decimal, stars]):
        input_error =  "Cantidad introducida debe ser un número positivo"

    if stars > 5:
        input_error =  "La cantidad de estrellas debe ser entre 0 y 5"

    if discount_decimal >= 1:
        input_error = "El descuento en decimal debe ser entre 0 y 1"

    if input_error:
        return JSONResponse(content={"error": input_error}, status_code=409)
    
    new_product = product_domain.Product(image=url_image_path,
                                        name=name,
                                        description=description,
                                        type=type,
                                        brand=brand,
                                        stock=stock,
                                        price=price,
                                        discount_decimal=discount_decimal,
                                        stars=stars)

    
    try:
        product_api.add_product(new_product)
        return JSONResponse(status_code=200, content={"message": "Producto añadido a base de datos"})
    
    except HTTPException as he:
        return JSONResponse(status_code=he.status_code, content={"error": he.detail})

@router.post("/add_user", response_class=JSONResponse, response_model=dict)
async def add_user(user: dict = Depends(get_current_user),
                  name: str = Form(...),
                  email: str = Form(...),
                  password: str = Form(...),
                  type: str = Form(...)):
                      
    if not user:
        return JSONResponse(content={"redirect_url": "/user/login"}, status_code=401)

    logger.info(f"POST: Adding user in database")

    input_error = None

    if len(name) < 3 or len(name) > 50:
        input_error = "¡Ay! Tu nombre debe tener entre 3 y 50 caracteres"

    if input_error:
        return JSONResponse(content={"error": input_error}, status_code=409)
    
    user_to_save = User(name=name, email=email, password=password, type=type)

    try:
        user_api.save(user_to_save)
        return JSONResponse(status_code=200, content={"message": "Usuario añadido a base de datos"})
    
    except HTTPException as he:
        return JSONResponse(status_code=he.status_code, content={"error": he.detail})
    

@router.delete("/products/{product_id}", response_class=JSONResponse, response_model=dict)
async def delete_product(product_id: int,
                         user: dict = Depends(get_current_user)):

    logger.info(f"POST: Removing {product_id} from dashboard")

    if not user:
        return JSONResponse(content={"redirect_url": "/user/login"}, status_code=401)
    
    product_api.delete_product(product_id)

    return JSONResponse(status_code=200, content={"message": "Producto eliminado de base de datos"})


@router.delete("/users/{user_id}", response_class=JSONResponse, response_model=dict)
async def delete_user(user_id: int,
                      user: dict = Depends(get_current_user)):

    logger.info(f"POST: Removing {user_id} from dashboard")
    
    if not user:
        return JSONResponse(content={"redirect_url": "/user/login"}, status_code=401)
    
    user_api.delete_user(user_id)

    return JSONResponse(status_code=200, content={"message": "Usuario eliminado de base de datos"})


@router.get("/products/{product_id}", response_class=JSONResponse, response_model=dict)
async def get_product_details(product_id: int,
                              user: dict = Depends(get_current_user)):
    if not user:
        return JSONResponse(content={"redirect_url": "/user/login"}, status_code=401)

    logger.info(f"GET: Fetching details for product {product_id}")

    product = product_api.get_product_by_id(product_id)

    return JSONResponse(status_code=200, content={"product": product.model_dump()})
    

@router.put("/products/{product_id}", response_class=JSONResponse, response_model=dict)
async def update_product(product_id: int,
                         user: dict = Depends(get_current_user),
                         name: str = Form(default=None),
                         description: str = Form(default=None),
                         type: str = Form(default=None),
                         brand: str = Form(default=None),
                         stock: int = Form(default=None),
                         price: float = Form(default=None),
                         discount_decimal: float = Form(default=None),
                         stars: float = Form(default=None),
                         image: UploadFile = File(default=None)):

    logger.info(f"PUT: Updating product {product_id}")

    input_error = None

    if any(value < 0 for value in [stock, price, discount_decimal, stars]):
        input_error =  "Cantidad introducida debe ser un número positivo"

    if stars > 5:
        input_error =  "La cantidad de estrellas debe ser entre 0 y 5"

    if discount_decimal >= 1:
        input_error = "El descuento en decimal debe ser entre 0 y 1"

    if input_error:
        return JSONResponse(content={"error": input_error}, status_code=409)

    product_exists = product_api.get_product_by_id(product_id)

    if not product_exists:
        raise HTTPException(status_code=404, detail="Producto no encontrado")
    
    if image:
        image_path = os.path.join(config.UPLOAD_FOLDER, image.filename)
        with open(image_path, "wb") as buffer:
            shutil.copyfileobj(image.file, buffer)
        url_image_path = os.path.join("static/images", image.filename).replace(os.sep, '/')
    else:
        url_image_path = product_exists.image
    
    updated_product = product_domain.Product(
        id=product_id,
        image=url_image_path,
        name=name,
        description=description,
        type=type,
        brand=brand,
        stock=stock,
        price=price,
        discount_decimal=discount_decimal,
        stars=stars
    )

    product_api.update_product(updated_product)
    return JSONResponse(status_code=200, content={"message": "Producto actualizado correctamente"})