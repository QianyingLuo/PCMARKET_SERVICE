from fastapi import Request
from jose import ExpiredSignatureError, JWTError, jwt
from .. import config

def get_current_user(request: Request):
    token = request.cookies.get("token")
    if token is None:
        return None

    try:
        payload = jwt.decode(token, config.SECRET_KEY, algorithms=[config.ALGORITHM])

        username: str = payload.get("name")
        if username is None:
            return None

        return {"name": username}
    
    except ExpiredSignatureError:
        return None
    
    except JWTError as e:
        return None
