from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles

from .controller.index import router as index_router
from .controller.login import router as login_router
from .controller.category import router as category_router
from .controller.offers import router as offers_router


from .repository.mysql_connection import load_database

async def startup_database_loader():
    await load_database()

app = FastAPI()
app.mount("/static", StaticFiles(directory="src/assets/"), name="static")
app.add_event_handler("startup", startup_database_loader)

app.include_router(index_router)
app.include_router(login_router, prefix="/login")
app.include_router(category_router, prefix="/category") 
app.include_router(offers_router, prefix="/offers") 
