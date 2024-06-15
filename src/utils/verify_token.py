import os
from fastapi import Request
from jose import ExpiredSignatureError, JWTError, jwt

SECRET_KEY = os.environ.get("SECRET_KEY")
ALGORITHM = os.environ.get("ALGORITHM")
ACCESS_TOKEN_EXPIRE_MINUTES = int(os.environ.get("ACCESS_TOKEN_EXPIRE_MINUTES", 1))


def get_current_user(request: Request):
    token = request.cookies.get("token")
    if token is None:
        return None

    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])

        username: str = payload.get("name")
        if username is None:
            return None

        return {"name": username}
    
    except ExpiredSignatureError:
        return None
    
    except JWTError as e:
        return None
