from fastapi import APIRouter, Request
from fastapi.responses import FileResponse
from ..useful.project import get_file_path 

router = APIRouter()

@router.get("/", response_class=FileResponse)
async def login_page(request: Request):
    login_path = "../assets/pages/login.html"
    path = get_file_path(login_path)
    return FileResponse(path)