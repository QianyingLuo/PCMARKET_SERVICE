from typing import Optional
from pydantic import BaseModel, Field

class Order_cart(BaseModel):
    id: Optional[int] = Field(primary_key=True, autoincrement=True, default=None)
    user_id: int
    product_id: int
    product_quantity: int = Field(..., gt=0)
    subtotal: float
    order_id: Optional[int]