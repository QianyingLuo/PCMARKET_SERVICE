from ..repository.crud import order as order_crud
from ..domain import order as order_domain

def save_order(order: order_domain.Order) -> order_domain.Order:
    return order_crud.save_order(order)


def save_delivery_info_in_order(user_id: int, order_id: int) -> None:
    delivery_info = order_crud.get_latest_delivery_info_by_user_id(user_id)
    if delivery_info:
        order_crud.update_order_with_delivery_info(order_id, delivery_info)


def delete_temporary_cart_by_user_id(user_id: int) -> None:
    order_crud.delete_temporary_cart_by_user_id(user_id)

def delete_delivery_info_by_user_id(user_id: int) -> None:
    order_crud.delete_delivery_info_by_user_id(user_id)