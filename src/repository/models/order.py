from typing import Optional, Self
from pydantic import BaseModel, Field
from datetime import datetime, timezone

from ...domain import order as order_domain

class Order(BaseModel):
    id: Optional[int] = Field(primary_key=True, autoincrement=True, default=None)
    amount: float
    user_id: int
    first_name: Optional[str] = None
    last_name: Optional[str] = None
    address: Optional[str] = None
    complement_address: Optional[str] = None
    postcode: Optional[str] = None
    city: Optional[str] = None
    phone: Optional[str] = None
    country: Optional[str] = None
    creation_time: datetime = Field(default_factory=lambda: datetime.now(timezone.utc))
    status: Optional[str] = None
    
    @classmethod
    def from_domain(cls, order_domain: order_domain.Order) -> Self:
        return cls.model_validate(order_domain.model_dump())
    
    def to_domain(self)-> order_domain.Order:
        return order_domain.Order.model_validate(self.model_dump())
