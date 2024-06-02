from typing import Optional

from pydantic import BaseModel, Field


class User(BaseModel):
    id: Optional[int] = Field(primary_key=True, autoincrement=True, default=None)
    username: str
    email: str
    password: str
