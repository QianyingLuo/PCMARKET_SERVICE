import json
from typing import Optional
from pydantic import BaseModel
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
    id: int
    name: str
    description: Optional[str] = None
    type: str
    brand: str
    stock: int
    price: float
    discount_decimal: float
    stars: float
    image: str
    
    def to_domain(self)-> product_domain.Product:
        return product_domain.Product.model_validate(self.model_dump())
