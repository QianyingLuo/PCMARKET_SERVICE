import os
from fastapi import APIRouter
from fastapi.responses import FileResponse


router = APIRouter()

@router.get("/")
async def index():
    current_directory = os.path.dirname(__file__)
    navbar_path = "../assets/templates/navbar.html"
    file_path = os.path.join(current_directory, navbar_path)
    return FileResponse(file_path)