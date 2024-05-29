from pydantic import BaseModel

class Product(BaseModel):
    id: int
    name: str
    description: str
    type: str
    brand: str
    stock: int
    price: float
    discounted_price: float
    stars: float
    image: str