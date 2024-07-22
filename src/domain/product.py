from typing import Optional
from pydantic import BaseModel

class DescriptionSection(BaseModel):
    title: str
    description: str

class DescriptionList(BaseModel):
    title: str
    description: list[str]

class DescriptionDictionary(BaseModel):
    title: str
    description: dict[str, list[str]]

class Product(BaseModel):
    id: int
    name: str
    description: Optional[str] = None
    type: Optional[str] = None
    brand: Optional[str] = None
    stock: Optional[int] = None
    price: float
    discount_decimal: float
    stars: float
    image: str
    discounted_price: Optional[float] = None
    discount_percentage: Optional[float] = None
    description_sections: Optional[list[DescriptionSection]] = None
    description_list: Optional[DescriptionList] = None
    description_dictionary : Optional[DescriptionDictionary] = None

