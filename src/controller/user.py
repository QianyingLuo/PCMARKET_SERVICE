from fastapi import APIRouter

from ..repository.models.user import User
from ..repository.crud import user as user_crud

router = APIRouter()

@router.post("/")
async def save():
    user = User(
        username="Pepe", 
        password="12345", 
        email="pepe@gmail.com", 
        full_name="Pepe Gimenez", 
        address="Av Juan, 2", 
        phone="999999999"
    )
    await user_crud.save(user)
    return "Hola mundo"