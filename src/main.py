from fastapi import FastAPI
from .controller.user import router as user_router
from .repository.mysql_connection import load_database

app = FastAPI()

@app.on_event("startup")
async def startup_event():
    await load_database()

app.include_router(user_router, prefix="/user")
