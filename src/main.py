from fastapi import FastAPI, Request, Response
from fastapi.staticfiles import StaticFiles

from .controller.index import router as index_router
from .controller.signup import router as signup_router
from .controller.login import router as login_router
from .controller.logout import router as logout_router
from .controller.category import router as category_router
from .controller.offers import router as offers_router
from .useful import verify_token

from .repository.mysql_connection import load_database

async def startup_database_loader():
    await load_database()

app = FastAPI()

app.mount("/static", StaticFiles(directory="src/assets/"), name="static")
app.add_event_handler("startup", startup_database_loader)

@app.middleware("http")
async def check_token(request: Request, call_next):
    user = verify_token.get_current_user(request)

    if user:
        request.state.data = {"user": user }
    else:
        request.state.data = {}

    response: Response = await call_next(request)

    if not user and request.cookies.get("token"):
        response.delete_cookie("token")

    return response

app.include_router(index_router)
app.include_router(signup_router, prefix="/signup")
app.include_router(login_router, prefix="/login")
app.include_router(logout_router, prefix="/logout")
app.include_router(category_router, prefix="/category") 
app.include_router(offers_router, prefix="/offers") 
