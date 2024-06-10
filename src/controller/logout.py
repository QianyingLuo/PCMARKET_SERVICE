from fastapi import APIRouter, Request, Response
from ..useful import verify_token

router = APIRouter()

@router.get("/")
async def logout_get(request: Request, response: Response):
    user = verify_token.get_current_user(request)
    request.state.data = {}

    if user:
        response.delete_cookie("token")
        response.headers["Location"] = "/"
        response.status_code = 302

    return response

