import os
from fastapi import HTTPException, status

from ..domain import product as product_domain
from ..repository.crud import product as product_crud
from .. import config
from ..config import exception_messages
from ..config.log import logger

def get_all() -> list[product_domain.Product]: 
    products = product_crud.get_all()
        
    for product in products:
        product = add_discount(product)
    return products 


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
    
    if not product:
        raise HTTPException(status_code=404, detail=exception_messages.PRODUCT_NOT_FOUND)
    
    description_sections = product_crud.get_description_sections(product_id)
    description_list = product_crud.get_description_list(product_id)
    description_dictionary = product_crud.get_description_dictionary(product_id)

    product.description_sections = description_sections
    product.description_list = description_list
    product.description_dictionary = description_dictionary
    
    product = add_discount(product)
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


def add_discount(product: product_domain.Product) -> product_domain.Product:
    product.discounted_price = round(product.price * (1 - product.discount_decimal), 2) 
    if product.discount_decimal != 0:
        product.discount_percentage = round(product.discount_decimal * 100)
    
    return product


def add_product(product: product_domain.Product) -> product_domain.Product:

    repeated_image_path = product_crud.get_product_by_image_path(product.image)
    if repeated_image_path:
        logger.warn(exception_messages.PRODUCT_IMAGE_PATH_ALREADY_EXISTS_EXCEPTION)
        raise HTTPException(status_code=status.HTTP_409_CONFLICT, detail=exception_messages.PRODUCT_IMAGE_PATH_ALREADY_EXISTS_EXCEPTION)

    repeated_product_name = product_crud.get_product_by_name(product.name)

    if not repeated_product_name:
        return product_crud.add_product(product)

    else:
        logger.warn(exception_messages.PRODUCT_ALREADY_EXISTS_EXCEPTION)
        raise HTTPException(status_code=status.HTTP_409_CONFLICT, detail=exception_messages.PRODUCT_ALREADY_EXISTS_EXCEPTION)

def delete_product(product_id: int) -> None:
    product = product_crud.get_product_by_id(product_id)

    if not product:
        raise HTTPException(status_code=404, detail=exception_messages.PRODUCT_NOT_FOUND)
    
    image_relative_path = product.image.replace("static/images/", "")

    image_full_path = os.path.join(config.UPLOAD_FOLDER, image_relative_path)

    product_crud.delete_product(product_id)

    if os.path.exists(image_full_path):
        os.remove(image_full_path)
    

def update_product(product: product_domain.Product) -> product_domain.Product:

    previous_product = product_crud.get_product_by_id(product.id)
    previous_product_name = previous_product.name

    repeated_product = product_crud.get_product_by_name(product.name)

    if repeated_product and repeated_product.name != previous_product_name:
        logger.warn(exception_messages.PRODUCT_ALREADY_EXISTS_EXCEPTION)
        raise HTTPException(status_code=status.HTTP_409_CONFLICT, detail=exception_messages.PRODUCT_ALREADY_EXISTS_EXCEPTION)

    else:
        return product_crud.update_product(product)

    
def deduct_product_quantity(product_id: int, product_quantity: int) -> None:
    product_crud.deduct_product_quantity(product_id, product_quantity)