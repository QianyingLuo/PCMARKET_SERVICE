from ...domain import cart as cart_domain
from ..models import cart as cart_model
from ...config.database.mysql_connection import mysql_connection

def add_to_cart(cart_data: cart_domain.Cart) -> dict:
    cart_crud = cart_model.Cart.from_domain(cart_domain=cart_data)
    cursor = mysql_connection.cursor(dictionary=True)

    select_query = "SELECT product_quantity FROM temporary_cart WHERE user_id = %s AND product_id = %s"
    cursor.execute(select_query, (cart_crud.user_id, cart_crud.product_id))
    product_in_cart = cursor.fetchone()
    cursor.fetchall()

    if product_in_cart:
        new_quantity = product_in_cart['product_quantity'] + cart_crud.product_quantity
        update_query = "UPDATE temporary_cart SET product_quantity = %s WHERE user_id = %s AND product_id = %s"
        cursor.execute(update_query, (new_quantity, cart_crud.user_id, cart_crud.product_id))
    else:
        insert_query = "INSERT INTO temporary_cart (user_id, product_id, product_quantity) VALUES (%s, %s, %s)"
        cart_data = (
            cart_crud.user_id,
            cart_crud.product_id,
            cart_crud.product_quantity
        )
        cursor.execute(insert_query, cart_data)
    cursor.close()
    
    return {
        "user_id": cart_crud.user_id,
        "product_id": cart_crud.product_id,
        "product_quantity": cart_crud.product_quantity
    }

def get_cart_exists_by_user_id(user_id: int) -> bool:
    cursor = mysql_connection.cursor(dictionary=True)
    query = "SELECT * FROM temporary_cart WHERE user_id = %s LIMIT 1"
    cursor.execute(query, (user_id,))
    cart_data = cursor.fetchone()
    cursor.close()
     
    if cart_data:
        return True
    else:
        return False
    
def get_products_in_cart_by_user_id(user_id: int) -> list[cart_domain.Cart]:
    products: list[cart_model.Cart] = []

    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM temporary_cart WHERE user_id = %s", (user_id,))
    rows = cursor.fetchall()

    if not rows:
        return None
    
    for row in rows:
        product = cart_model.Cart.model_validate(row)
        products.append(product)
        
    return [product.to_domain() for product in products]