from typing import Optional, Self
from pydantic import BaseModel, Field

from ...domain import order_cart as order_cart_domain

class Order_cart(BaseModel):
    id: Optional[int] = Field(primary_key=True, autoincrement=True, default=None)
    user_id: int
    product_id: int
    product_quantity: int = Field(..., gt=0)
    subtotal: float
    order_id: Optional[int]
    
    @classmethod
    def from_domain(cls, order_cart_domain: order_cart_domain.Order_cart) -> Self:
        return cls.model_validate(order_cart_domain.model_dump())
    
    def to_domain(self)-> order_cart_domain.Order_cart:
        return order_cart_domain.Order_cart.model_validate(self.model_dump())