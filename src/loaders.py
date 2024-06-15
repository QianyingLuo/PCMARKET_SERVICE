from fastapi import FastAPI
from .config.database.database_loader import load_database

async def startup_database_loader():
    await load_database()


def set_event_handlers(app: FastAPI) -> None:
    app.add_event_handler("startup", startup_database_loader)

