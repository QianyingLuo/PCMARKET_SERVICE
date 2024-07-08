from typing import Optional, Self
from pydantic import BaseModel, Field

from ...domain import cart as cart_domain

class Cart(BaseModel):
    id: Optional[int] = Field(primary_key=True, autoincrement=True, default=None)
    user_id: int
    product_id: int
    product_quantity: int = Field(..., gt=0)
    
    @classmethod
    def from_domain(cls, cart_domain: cart_domain.Cart) -> Self:
        return cls.model_validate(cart_domain.model_dump())
    
    def to_domain(self)-> cart_domain.Cart:
        return cart_domain.Cart.model_validate(self.model_dump())