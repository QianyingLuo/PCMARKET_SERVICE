from ..repository.crud import delivery as delivery_crud
from ..domain import delivery as delivery_domain

def save(delivery: delivery_domain.Delivery) -> delivery_domain.Delivery:
    return delivery_crud.save(delivery)
