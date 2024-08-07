from typing import Optional, Self
from pydantic import BaseModel, Field

from ...domain import delivery as delivery_domain

class Delivery(BaseModel):
    id: Optional[int] = Field(primary_key=True, autoincrement=True, default=None)
    user_id: int
    first_name: str
    last_name: str
    address: str
    complement_address: Optional[str]
    postcode: str
    city: str
    phone: str
    country: str
    
    @classmethod
    def from_domain(cls, delivery_domain: delivery_domain.Delivery) -> Self:
        return cls.model_validate(delivery_domain.model_dump())
    
    def to_domain(self)-> delivery_domain.Delivery:
        return delivery_domain.Delivery.model_validate(self.model_dump())