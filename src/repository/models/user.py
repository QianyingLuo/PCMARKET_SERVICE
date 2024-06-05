from typing import Optional

from pydantic import BaseModel, Field, EmailStr

class User(BaseModel):
    id: Optional[int] = Field(primary_key=True, autoincrement=True, default=None)
    name: str = Field (min_length=8, max_length=50)
    email: EmailStr
    password: str = Field(min_length=6, max_length=500)
    address: Optional[str] = Field(None, max_length=70)
    phone: Optional[str] = Field(None, max_length=20)
