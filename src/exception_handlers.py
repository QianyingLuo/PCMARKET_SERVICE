from fastapi import FastAPI, Request
from fastapi.templating import Jinja2Templates

from .config.log import logger
from .config import exception_messages

async def generic_exception_handler(request: Request, exc: Exception):
    templates = Jinja2Templates(directory="src/assets/")
    logger.error(exception_messages.GENERIC_ERROR)
    return templates.TemplateResponse("pages/error.html", {"request": request, "error": str(exc)})


def set_exception_handlers(app: FastAPI) -> None:
    app.add_exception_handler(Exception, generic_exception_handler)