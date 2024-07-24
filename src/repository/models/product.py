import json
from typing import Optional, Self
from pydantic import BaseModel, Field
from ...domain import product as product_domain

class DescriptionSection(BaseModel):
    title: str
    description: str

    def to_domain(self)-> product_domain.DescriptionSection:
        return product_domain.DescriptionSection.model_validate(self.model_dump())
    
class DescriptionList(BaseModel):
    title: str
    description: str 
    
    def to_domain(self)-> product_domain.DescriptionList:
        converted_description = self.description.split("//")

        result = dict()
        result["title"] = self.title
        result["description"] = converted_description
        return product_domain.DescriptionList.model_validate(result)
    
class DescriptionDictionary(BaseModel):
    title: str
    description: str 

    def to_domain(self)-> product_domain.DescriptionDictionary:
        converted_description = json.loads(self.description)

        result = dict()
        result["title"] = self.title
        result["description"] = converted_description
        return product_domain.DescriptionDictionary.model_validate(result)

class Product(BaseModel):
    id: Optional[int] = Field(primary_key=True, autoincrement=True, default=None)
    name: str
    description: Optional[str] = None
    type: Optional[str] = None
    brand: Optional[str] = None
    stock: Optional[int] = None
    price: float
    discount_decimal: float
    discounted_price: Optional[float] = None
    stars: float
    image: str

    @classmethod
    def from_domain(cls, product_domain: product_domain.Product) -> Self:
        return cls.model_validate(product_domain.model_dump())
    
    def to_domain(self)-> product_domain.Product:
        return product_domain.Product.model_validate(self.model_dump())
