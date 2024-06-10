import os
import bcrypt
from ..useful import exceptions
from ..repository.crud import user as user_crud
from ..domain import user as user_domain
from fastapi import HTTPException, status
from jose import jwt
from datetime import datetime, timedelta, timezone
from typing import Optional

SECRET_KEY = os.environ.get("SECRET_KEY")
ALGORITHM = os.environ.get("ALGORITHM")
ACCESS_TOKEN_EXPIRE_MINUTES = int(os.environ.get("ACCESS_TOKEN_EXPIRE_MINUTES", 1))

def save(user: user_domain.User) -> user_domain.User:
    try:
        hashed_password = get_password_hash(user.password)
        user.password = hashed_password

        return user_crud.save(user)

    except exceptions.EmailAlreadyExists as ve:
        raise HTTPException(status_code=status.HTTP_409_CONFLICT, detail=str(ve))

    except Exception as e:
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail=str(e))

        
def do_login(user_login: user_domain.UserLogin) -> str:
    
    user = user_crud.get_user_by_email(user_login.email)

    if not user:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Los datos introducidos no son válidos")
    
    if not verify_password(user_login.password, user.password):
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Los datos introducidos no son válidos")

    user_token = user_domain.UserToken(id=user.id, email=user.email, name=user.name)
    token: str = create_access_token(user_token, timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES))
    return token


def get_password_hash(password: str) -> str:
    return bcrypt.hashpw(password.encode("utf-8"), bcrypt.gensalt())

def verify_password(plain_password: str, hashed_password: str) -> bool:
    return bcrypt.checkpw(plain_password.encode("utf-8"), hashed_password.encode("utf-8"))

def create_access_token(data: user_domain.UserToken, expires_delta: Optional[timedelta] = None):
    if expires_delta:
        expire = datetime.now(timezone.utc) + expires_delta
    else:
        expire = datetime.now(timezone.utc) + timedelta(minutes=15)

    encoded_data: dict = data.model_dump()
    encoded_data.update({"exp": expire})
    return jwt.encode(encoded_data, SECRET_KEY, algorithm=ALGORITHM)
