import logging
import os
from fastapi import Request
from jose import ExpiredSignatureError, JWTError, jwt

SECRET_KEY = os.environ.get("SECRET_KEY")
ALGORITHM = os.environ.get("ALGORITHM")
ACCESS_TOKEN_EXPIRE_MINUTES = int(os.environ.get("ACCESS_TOKEN_EXPIRE_MINUTES", 1))


logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger(__name__)

def get_current_user(request: Request):
    token = request.cookies.get("token")
    if token is None:
        logger.debug("No token found in cookies.")
        return None

    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        logger.debug(f"Payload decoded successfully: {payload}")

        username: str = payload.get("name")
        if username is None:
            logger.debug("No username found in token payload.")
            return None

        logger.debug(f"Username found in token payload: {username}")
        return {"name": username}
    
    except ExpiredSignatureError:
        logger.debug("Token is expired.")
        return "expired"
    
    except JWTError as e:
        logger.debug(f"JWTError occurred: {e}")
        return None