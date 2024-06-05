from ..repository.crud import user as user_crud
from ..repository.models.user import User

async def save():
    user = User(
        name="Pepe",
        email="pepe@gmail.com",
        password="12345"
    )
    await user_crud.save(user)
    return "Hola mundo"
