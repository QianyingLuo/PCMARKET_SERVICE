from ..domain import favorite as favorite_domain
from ..repository.crud import favorite as favorite_crud

def check_product_exists_in_favorites(user_id: int, product_id: int) -> bool:
    return favorite_crud.check_product_exists_in_favorites(user_id, product_id)


def check_if_favorite_list_has_items(user_id: int) -> bool:
    return favorite_crud.check_if_favorite_list_has_items(user_id)


def add_to_favorites(product_data: favorite_domain.Favorite) -> favorite_domain.Favorite:
    product_to_add = favorite_crud.add_to_favorites(product_data)
    return product_to_add


def remove_from_favorites(user_id: int, product_id: int) -> None:
    favorite_crud.remove_from_favorites(user_id, product_id)


def get_products_in_favorites_by_user_id(user_id: int) -> list[favorite_domain.Favorite]:
    return favorite_crud.get_products_in_favorites_by_user_id(user_id) 