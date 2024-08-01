from ..repository.crud import order as order_crud
from ..domain import order as order_domain

def save_order(order: order_domain.Order) -> order_domain.Order:
    delivery_info = order_crud.get_latest_delivery_info_by_user_id(order.user_id)
    if delivery_info:
        return order_crud.save_order(order, delivery_info)

def delete_temporary_cart_by_user_id(user_id: int) -> None:
    order_crud.delete_temporary_cart_by_user_id(user_id)

def delete_delivery_info_by_user_id(user_id: int) -> None:
    order_crud.delete_delivery_info_by_user_id(user_id)