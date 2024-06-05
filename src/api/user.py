import bcrypt
from ..useful import exceptions
from ..repository.crud import user as user_crud
from ..repository.models.user import User
from fastapi import HTTPException, status

def save(user: User) -> User:
    try:
        hashed_password = hash_password(user.password)
        user.password = hashed_password

        return user_crud.save(user)

    except exceptions.EmailAlreadyExists as ve:
        raise HTTPException(status_code=status.HTTP_409_CONFLICT, detail=str(ve))

    except Exception as e:
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail=str(e))

def hash_password(password: str) -> str:
    return bcrypt.hashpw(password.encode("utf-8"), bcrypt.gensalt())


async def save():
    user = User(
        name="Pepe",
        email="pepe@gmail.com",
        password="12345"
    )
    await user_crud.save(user)
    return "Hola mundo"
