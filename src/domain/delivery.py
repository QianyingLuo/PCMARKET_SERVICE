from typing import Optional
from pydantic import BaseModel, Field

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