from fastapi import APIRouter, Request
from fastapi.responses import FileResponse, HTMLResponse
from fastapi.templating import Jinja2Templates

from ..useful.project import get_file_path 

router = APIRouter()
templates = Jinja2Templates(directory="pages")

@router.get("/", response_class=FileResponse)
async def login_page(request: Request):
    login_path = "../assets/pages/login.html"
    path = get_file_path(login_path)
    return FileResponse(path)




# @router.get("/login")
# async def login():
#     current_directory = os.path.dirname(__file__)
#     login_path = "../assets/pages/login.html"
#     file_path = os.path.join(current_directory, login_path)
#     return FileResponse(file_path)