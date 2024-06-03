from pydantic import BaseModel
from ...domain import product as product_domain

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
    
    def to_domain(self)-> product_domain.Product:
        return product_domain.Product.model_validate(self.model_dump())