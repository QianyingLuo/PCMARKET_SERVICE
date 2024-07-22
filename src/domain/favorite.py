from typing import Optional
from pydantic import BaseModel, Field

class Favorite(BaseModel):
    id: Optional[int] = Field(primary_key=True, autoincrement=True, default=None)
    user_id: int
    product_id: int