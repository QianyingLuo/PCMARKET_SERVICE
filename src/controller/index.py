from fastapi import APIRouter
from fastapi.responses import FileResponse

from ..useful.project import get_file_path

router = APIRouter()

@router.get("/")
async def index():
    navbar_path = "../assets/templates/base.html"
    path = get_file_path(navbar_path)
    return FileResponse(path)