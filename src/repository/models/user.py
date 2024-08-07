from typing import Optional, Self
from pydantic import BaseModel, Field, EmailStr

from ...domain import user as user_domain

class User(BaseModel):
    id: Optional[int] = Field(primary_key=True, autoincrement=True, default=None)
    name: str = Field (min_length=3, max_length=50)
    email: EmailStr
    password: str = Field(min_length=6, max_length=500)
    type: str = Field(default='cliente', max_length=15)

    @classmethod
    def from_domain(cls, user_domain: user_domain.User) -> Self:
        return cls.model_validate(user_domain.model_dump())
    
    def to_domain(self)-> user_domain.User:
        return user_domain.User.model_validate(self.model_dump())

