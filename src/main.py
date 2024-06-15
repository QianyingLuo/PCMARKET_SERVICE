from fastapi import FastAPI, Request, Response
from fastapi.staticfiles import StaticFiles

from .loaders import set_event_handlers
from .middlewares import set_middlewares
from .exception_handlers import set_exception_handlers
from .controller.index import router as index_router
from .controller.user import router as user_router
from .controller.category import router as category_router
from .controller.offers import router as offers_router

app = FastAPI()

set_event_handlers(app)
set_middlewares(app)
set_exception_handlers(app)

app.mount("/static", StaticFiles(directory="src/assets/"), name="static")

app.include_router(index_router)
app.include_router(user_router, prefix="/user")
app.include_router(category_router, prefix="/category") 
app.include_router(offers_router, prefix="/offers") 

