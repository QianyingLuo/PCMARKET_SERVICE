from ...domain import favorite as favorite_domain
from ..models import favorite as favorite_model
from ...domain import product as product_domain
from ..models import product as product_model
from ...config.database.mysql_connection import get_mysql_connection


def check_product_exists_in_favorites(user_id: int, product_id: int) -> bool:
    cursor = get_mysql_connection().cursor(dictionary=True)
    query = "SELECT * FROM favorite WHERE user_id = %s AND product_id = %s"
    cursor.execute(query, (user_id, product_id))
    favorite_data = cursor.fetchone()
    cursor.close()
    if favorite_data:
        return True
    else:
        return False


def check_if_favorite_list_has_items(user_id: int) -> bool:
    cursor = get_mysql_connection().cursor(dictionary=True)
    query = "SELECT * FROM favorite WHERE user_id = %s LIMIT 1"
    cursor.execute(query, (user_id,))
    favorite_data = cursor.fetchone()
    cursor.close()
    if favorite_data:
        return True
    else:
        return False
    

def add_to_favorites(favorite: favorite_domain.Favorite) -> favorite_domain.Favorite:
    favorite_crud = favorite_model.Favorite.from_domain(favorite_domain=favorite)
    cursor = get_mysql_connection().cursor(dictionary=True)

    insert_query = "INSERT INTO favorite (user_id, product_id) VALUES (%s, %s)"
    product_data = (
        favorite_crud.user_id,
        favorite_crud.product_id
    )
    cursor.execute(insert_query, product_data)
    cursor.close()
    
    return favorite_crud.to_domain()

def remove_from_favorites(user_id: int, product_id: int, ) -> None:
    cursor = get_mysql_connection().cursor()
    delete_query = "DELETE FROM favorite WHERE user_id = %s AND product_id = %s"
    cursor.execute(delete_query, (user_id, product_id))
    cursor.close()


def get_products_in_favorites_by_user_id(user_id: int) -> list[product_domain.Product]:
    cursor = get_mysql_connection().cursor(dictionary=True)
    query = """
        SELECT 
            p.id, 
            p.name, 
            p.price, 
            p.discount_decimal, 
            p.stars, 
            p.image 
        FROM 
            favorite f
        JOIN 
            product p 
        ON 
            f.product_id = p.id 
        WHERE 
            f.user_id = %s
    """
    cursor.execute(query, (user_id,))
    favorite_products_data = cursor.fetchall()
    cursor.close()
    
    favorite_products = []
    for product_data in favorite_products_data:
        discounted_price = round(product_data["price"] * (1 - product_data["discount_decimal"]), 2)
        product_data["discounted_price"] = discounted_price

        product = product_model.Product(**product_data)
        favorite_products.append(product.to_domain())
    
    return favorite_products