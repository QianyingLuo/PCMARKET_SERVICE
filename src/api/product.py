from ..domain import product as product_domain
from ..repository.crud import product as product_crud


def get_all() -> list[product_domain.Product]: 
    return product_crud.get_all()

def get_top_products_by_type(product_type: str, limit: int = 4) -> list[product_domain.Product]:
    products = product_crud.get_top_products_by_type(product_type, limit)
    
    for product in products:
        product.discounted_price = round(product.price * (1 - product.discount_percentage), 2)
    return products 


def get_products_by_type(product_type: str) -> list[product_domain.Product]:
    products = product_crud.get_products_by_type(product_type)

    for product in products:
        product.discounted_price = round(product.price * (1 - product.discount_percentage), 2) 
    return products

def get_discounted_products() -> list[product_domain.Product]:
    products = product_crud.get_discounted_products() 

    for product in products:
        product.discounted_price = round(product.price * (1 - product.discount_percentage), 2) 
    return products

