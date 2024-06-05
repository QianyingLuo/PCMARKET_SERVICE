from pydantic import BaseModel

class Product(BaseModel):
    id: int
    name: str
    description: str
    type: str
    brand: str
    stock: int
    price: float
    discount_percentage: float
    stars: float
    image: str
