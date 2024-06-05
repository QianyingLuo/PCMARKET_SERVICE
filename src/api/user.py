import os
<<<<<<< Updated upstream
<<<<<<< Updated upstream

import bcrypt
from ..repository.crud import user as user_crud
from ..repository.models.user import User
from fastapi import HTTPException, exceptions, status
=======
from ..useful import exceptions
from ..repository.crud import user as user_crud
from ..repository.models.user import User
from fastapi import HTTPException, status
>>>>>>> Stashed changes
=======
from ..useful import exceptions
from ..repository.crud import user as user_crud
from ..repository.models.user import User
from fastapi import HTTPException, status
>>>>>>> Stashed changes
from jose import jwt
from passlib.context import CryptContext
from datetime import datetime, timedelta
from typing import Optional

def save(user: User) -> User:
    try:
        hashed_password = get_password_hash(user.password)
        user.password = hashed_password

        return user_crud.save(user)

    except exceptions.EmailAlreadyExists as ve:
        raise HTTPException(status_code=status.HTTP_409_CONFLICT, detail=str(ve))

    except Exception as e:
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail=str(e))

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

# def hash_password(password: str) -> str:
#     return bcrypt.hashpw(password.encode("utf-8"), bcrypt.gensalt())

def get_password_hash(password: str) -> str:
    return pwd_context.hash(password)

SECRET_KEY = os.environ.get("SECRET_KEY")
ALGORITHM = os.environ.get("ALGORITHM")
ACCESS_TOKEN_EXPIRE_MINUTES = os.environ.get("30")


def verify_password(plain_password, hashed_password):
    return pwd_context.verify(plain_password, hashed_password)

def authenticate_user(email: str, password: str):
    user = user_crud.get_user_by_email(email)
    if not user:
        return False
    if not verify_password(password, user.password):
        return False
    return user

def create_access_token(data: dict, expires_delta: Optional[timedelta] = None):
    to_encode = data.copy()
    if expires_delta:
        expire = datetime.utcnow() + expires_delta
    else:
        expire = datetime.utcnow() + timedelta(minutes=15)
    to_encode.update({"exp": expire})
    encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)
    return encoded_jwt




