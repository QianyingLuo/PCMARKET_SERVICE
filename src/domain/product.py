from typing import Optional
from pydantic import BaseModel

class Product(BaseModel):
    id: int
    name: str
    description: str
    type: str
    brand: str
    stock: int
    price: float
    discount_decimal: float
    stars: float
    image: str
    discounted_price: Optional[float] = None
    discount_percentage: Optional[float] = None

