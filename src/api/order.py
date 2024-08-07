from fastapi import HTTPException

from ..repository.crud import order as order_crud
from ..config import exception_messages
from ..domain import order as order_domain


def save_order(order: order_domain.Order) -> order_domain.Order:
    delivery_info = order_crud.get_latest_delivery_info_by_user_id(order.user_id)
    if delivery_info:
        return order_crud.save_order(order, delivery_info)


def delete_temporary_cart_by_user_id(user_id: int) -> None:
    order_crud.delete_temporary_cart_by_user_id(user_id)


def delete_delivery_info_by_user_id(user_id: int) -> None:
    order_crud.delete_delivery_info_by_user_id(user_id)


def get_order_exists_by_user_id(user_id: int) -> bool:
    return order_crud.get_order_exists_by_user_id(user_id)


def get_orders_by_user_id(user_id: int) -> list[order_domain.Order]:
    return order_crud.get_orders_by_user_id(user_id)    


def get_order_by_order_id(order_id: int)-> order_domain.Order:
    return order_crud.get_order_by_order_id(order_id)


def product_reference_count(order_id: int) -> int:
    return order_crud.product_reference_count(order_id)


def get_products_by_order_id(order_id: int) -> list[dict]:
    order = order_crud.get_products_by_order_id(order_id)

    if not order:
        raise HTTPException(status_code=404, detail=exception_messages.ORDER_NOT_FOUND)
    
    return order_crud.get_products_by_order_id(order_id)