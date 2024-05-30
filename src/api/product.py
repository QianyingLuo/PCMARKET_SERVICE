from ..domain import product as product_domain
from ..repository.crud import product as product_crud


def get_all() -> list[product_domain.Product]: 
    return product_crud.get_all()

def get_top_products_by_type(product_type: str, limit: int = 4) -> list[product_domain.Product]:
    return product_crud.get_top_products_by_type(product_type, limit)

def get_products_by_type(product_type: str) -> list[product_domain.Product]:
    return product_crud.get_products_by_type(product_type)

def get_discounted_products() -> list[product_domain.Product]:
    return product_crud.get_discounted_products()


