from typing import Optional
from pydantic import BaseModel, EmailStr, Field

class User(BaseModel):
    id: Optional[int] = Field(primary_key=True, autoincrement=True, default=None)
    name: str = Field (min_length=3, max_length=50)
    email: EmailStr
    password: str = Field(min_length=6, max_length=500)
    type: str = Field(default='cliente', max_length=15)

class UserLogin(BaseModel):
    email: EmailStr
    password: str

class UserToken(BaseModel):
    id: Optional[int] = Field(primary_key=True, autoincrement=True, default=None)
    email: EmailStr
    name: str = Field (min_length=8, max_length=50)
    type: str = Field(default='cliente', max_length=15)