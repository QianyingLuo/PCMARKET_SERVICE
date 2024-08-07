from typing import Optional
from ..domain import cart as cart_domain
from ..repository.crud import cart as cart_crud
from ..repository.crud import product as product_crud
from ..api import product as product_api
from ..domain import order_cart as order_cart_domain


def add_to_cart(cart_data: cart_domain.Cart) -> cart_domain.Cart:
    cart_to_add = cart_crud.add_to_cart(cart_data)
    return cart_to_add


def save_temporary_cart_in_order_cart(cart_data: order_cart_domain.Order_cart) -> order_cart_domain.Order_cart:
    cart_to_add = cart_crud.add_to_order_cart(cart_data)
    return cart_to_add


def update_product_quantity(cart_data: cart_domain.Cart) -> dict:
    updated_quantity = cart_crud.update_product_quantity(cart_data)
    return updated_quantity


def delete_product(product_id: int, user_id: int) -> None:
    cart_crud.delete_product(product_id, user_id)


def get_cart_exists_by_user_id(user_id: int) -> Optional[bool]:
    return cart_crud.get_cart_exists_by_user_id(user_id)


def get_cart_by_user_id(user_id: int) -> list[cart_domain.Cart]:
    return cart_crud.get_products_in_cart_by_user_id(user_id)    


def get_product_quantity_in_cart(user_id: int, product_id: int) -> int:
    return cart_crud.get_product_quantity_in_cart(user_id, product_id)


def get_total_user_cart_price(user_id: int) -> float:
    cart = cart_crud.get_products_in_cart_by_user_id(user_id)

    if not cart:
        return None
    
    total_price = 0
    for row in cart:
        product = product_crud.get_product_by_id(row.product_id)
        product = product_api.add_discount(product)
        product_price = product.discounted_price if product.discount_decimal != 0 else product.price
        total_price += (product_price * row.product_quantity)

    return total_price


def get_total_from_subtotal_in_order_cart(user_id: int) -> float:
    return cart_crud.get_total_from_subtotal_in_order_cart(user_id)



def update_order_id_in_order_cart(user_id: int, order_id: int) -> None:
    cart_crud.update_order_id_in_order_cart(user_id, order_id)