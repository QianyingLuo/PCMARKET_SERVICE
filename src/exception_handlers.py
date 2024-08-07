from fastapi import FastAPI, HTTPException, Request
from fastapi.templating import Jinja2Templates
from starlette.exceptions import HTTPException as StarletteHTTPException

from .config.log import logger
from .config import exception_messages

async def generic_exception_handler(request: Request, exc: Exception):
    templates = Jinja2Templates(directory="src/assets/")
    logger.error(exception_messages.GENERIC_ERROR)
    logger.error(exception_messages.DETAILED_ERROR(exc))
    return templates.TemplateResponse("pages/error.html", {"request": request, "error": str(exc)})


async def http_exception_handler(request: Request, exc: HTTPException):
    templates = Jinja2Templates(directory="src/assets/")
    logger.error(exception_messages.DETAILED_ERROR(exc))
    return templates.TemplateResponse("pages/error.html", {"request": request, "error": str(exc)})


async def starlette_exception_handler(request: Request, exc: StarletteHTTPException):
    templates = Jinja2Templates(directory="src/assets/")
    logger.error(exception_messages.DETAILED_ERROR(exc))
    return templates.TemplateResponse("pages/error.html", {"request": request, "error": str(exc)})


def set_exception_handlers(app: FastAPI) -> None:
    app.add_exception_handler(Exception, generic_exception_handler)
    app.add_exception_handler(HTTPException, http_exception_handler)
    app.add_exception_handler(StarletteHTTPException, starlette_exception_handler)
