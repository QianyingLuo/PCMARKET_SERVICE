from typing import Optional, Self
from pydantic import BaseModel, Field

from ...domain import favorite as favorite_domain

class Favorite(BaseModel):
    id: Optional[int] = Field(primary_key=True, autoincrement=True, default=None)
    user_id: int
    product_id: int
    
    @classmethod
    def from_domain(cls, favorite_domain: favorite_domain.Favorite) -> Self:
        return cls.model_validate(favorite_domain.model_dump())
    
    def to_domain(self)-> favorite_domain.Favorite:
        return favorite_domain.Favorite.model_validate(self.model_dump())