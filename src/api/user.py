import bcrypt

from fastapi import HTTPException, status
from jose import jwt
from datetime import datetime, timedelta, timezone

from .. import config
from ..repository.crud import user as user_crud
from ..domain import user as user_domain
from ..config import exception_messages
from ..config.log import logger

def save(user: user_domain.User) -> user_domain.User:
    hashed_password = get_password_hash(user.password)
    user.password = hashed_password

    repeated_user = user_crud.get_user_by_email(user.email)

    if not repeated_user:
        return user_crud.save(user)

    else:
        logger.warn(exception_messages.EMAIL_ALREADY_EXISTS_EXCEPTION)
        raise HTTPException(status_code=status.HTTP_409_CONFLICT, detail=exception_messages.EMAIL_ALREADY_EXISTS_EXCEPTION)

        
def do_login(user_login: user_domain.UserLogin) -> str:
    user = user_crud.get_user_by_email(user_login.email)

    if not user:
        logger.warn(exception_messages.NOT_AUTHORIZED_USER_EXCEPTION)
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail=exception_messages.NOT_AUTHORIZED_USER_EXCEPTION)
    
    if not verify_password(user_login.password, user.password):
        logger.warn(exception_messages.NOT_AUTHORIZED_USER_EXCEPTION)
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail=exception_messages.NOT_AUTHORIZED_USER_EXCEPTION)

    user_token = user_domain.UserToken(id=user.id, email=user.email, name=user.name, type=user.type)
    token: str = create_access_token(user_token, timedelta(minutes=config.ACCESS_TOKEN_EXPIRE_MINUTES))
    return token


def get_all() -> list[user_domain.User]: 
    users = user_crud.get_all()
    return users 

def delete_user(user_id: int) -> None:
    user = user_crud.get_user_by_id(user_id)
    if not user:
        raise HTTPException(status_code=404, detail=exception_messages.USER_NOT_FOUND)
    
    user_crud.delete_user(user_id)


# UTILS ################################################################################################################

def get_password_hash(password: str) -> str:
    return bcrypt.hashpw(password.encode("utf-8"), bcrypt.gensalt())

def verify_password(plain_password: str, hashed_password: str) -> bool:
    return bcrypt.checkpw(plain_password.encode("utf-8"), hashed_password.encode("utf-8"))

def create_access_token(data: user_domain.UserToken, expires_delta: timedelta) -> str:
    expire = datetime.now(timezone.utc) + expires_delta
    encoded_data: dict = data.model_dump()
    encoded_data.update({"exp": expire})
    return jwt.encode(encoded_data, config.SECRET_KEY, algorithm=config.ALGORITHM)
