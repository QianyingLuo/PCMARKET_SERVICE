from fastapi import HTTPException
from ..domain import product as product_domain
from ..repository.crud import product as product_crud
from .. import config
from ..config import exception_messages

def get_all() -> list[product_domain.Product]: 
        return product_crud.get_all()


def get_top_products_by_type(product_type: str) -> list[product_domain.Product]:
        products = product_crud.get_top_products_by_type(product_type, config.NUMBER_TOP_PRODUCTS)
        
        for product in products:
            product.discounted_price = round(product.price * (1 - product.discount_decimal), 2)
        return products 


def get_products_by_type(product_type: str) -> list[product_domain.Product]:
        products = product_crud.get_products_by_type(product_type)

        for product in products:
            product.discounted_price = round(product.price * (1 - product.discount_decimal), 2) 
        return products


def get_discounted_products() -> list[product_domain.Product]:
        products = product_crud.get_discounted_products() 

        for product in products:
            product.discounted_price = round(product.price * (1 - product.discount_decimal), 2) 
        return products

def get_product_by_id(product_id: int) -> product_domain.Product:
    
    product = product_crud.get_product_by_id(product_id)
    description_sections = product_crud.get_description_sections(product_id)
    description_list = product_crud.get_description_list(product_id)
    description_dictionary = product_crud.get_description_dictionary(product_id)

    product.description_sections = description_sections
    product.description_list = description_list
    product.description_dictionary = description_dictionary
    
    if not product:
        raise HTTPException(status_code=404, detail=exception_messages.PRODUCT_NOT_FOUND)

    product.discounted_price = round(product.price * (1 - product.discount_decimal), 2) 
    if product.discount_decimal != 0:
        product.discount_percentage = round(product.discount_decimal * 100)
    return product

def get_product_stock_by_id(product_id: int) -> int:
     
    product = product_crud.get_product_by_id(product_id)

    if not product:
        raise HTTPException(status_code=404, detail=exception_messages.PRODUCT_NOT_FOUND)

    return product.stock

def get_random_products_by_type(product_type: str) -> list[product_domain.Product]:
    products = product_crud.get_random_products_by_type(product_type, config.NUMBER_TOP_PRODUCTS)
    
    for product in products:
        product.discounted_price = round(product.price * (1 - product.discount_decimal), 2)
    return products 
