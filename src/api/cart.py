from ..domain import cart as cart_domain
from ..repository.crud import cart as cart_crud
from ..config import exception_messages

def add_to_cart(cart_data: cart_domain.Cart):
    cart_to_add = cart_crud.add_to_cart(cart_data)
    return cart_to_add

def get_cart_by_user_id(user_id: int) -> int:
    print(user_id)
    cart = cart_crud.get_cart_exists_by_user_id(user_id)
    if not cart:
        return None

    return cart

