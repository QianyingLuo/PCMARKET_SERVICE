import mysql.connector

from ...domain import cart as cart_domain
from ..models import cart as cart_model
from ..models import order_cart as order_cart_model
from ...domain import order_cart as order_cart_domain
from ...config.log import logger
from ...config.database.mysql_connection import mysql_connection

def add_to_cart(cart: cart_domain.Cart) -> cart_domain.Cart:
    cart_crud = cart_model.Cart.from_domain(cart_domain=cart)
    cursor = mysql_connection.cursor(dictionary=True)

    select_query = """
                SELECT product_quantity 
                FROM temporary_cart 
                WHERE user_id = %s AND product_id = %s"""
    cursor.execute(select_query, (cart_crud.user_id, cart_crud.product_id))
    product_in_cart = cursor.fetchone()
    cursor.fetchall()

    if product_in_cart:
        new_quantity = product_in_cart['product_quantity'] + cart_crud.product_quantity
        update_query = """
                    UPDATE temporary_cart 
                    SET product_quantity = %s 
                    WHERE user_id = %s AND product_id = %s"""
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
    
    return cart_crud.to_domain()


def update_product_quantity(cart: cart_domain.Cart) -> cart_domain.Cart:
    cart_crud = cart_model.Cart.from_domain(cart_domain=cart)
    cursor = mysql_connection.cursor(dictionary=True)

    update_query = """
                UPDATE temporary_cart 
                SET product_quantity = %s 
                WHERE user_id = %s AND product_id = %s"""
    cursor.execute(update_query, (cart_crud.product_quantity, cart_crud.user_id, cart_crud.product_id))

    cursor.close()
    
    return cart_crud.to_domain()


def delete_product(product_id: int, user_id: int) -> None:
    cursor = mysql_connection.cursor()
    delete_query = "DELETE FROM temporary_cart WHERE user_id = %s AND product_id = %s"
    cursor.execute(delete_query, (user_id, product_id))
    cursor.close()


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

    try:
        if not mysql_connection.is_connected():
            mysql_connection.connect()

        with mysql_connection.cursor(dictionary=True) as cursor:
            cursor.execute("SELECT * FROM temporary_cart WHERE user_id = %s", (user_id,))
            rows = cursor.fetchall()

            if not rows:
                return None

            for row in rows:
                product = cart_model.Cart.model_validate(row)
                products.append(product)

    except mysql.connector.Error as e:
        logger.error(f"Database operation failed: {str(e)}")
        return None

    return [product.to_domain() for product in products]


def get_product_quantity_in_cart(user_id: int, product_id: int) -> int:
    cursor = mysql_connection.cursor(dictionary=True)
    select_query = """
                SELECT product_quantity 
                FROM temporary_cart 
                WHERE user_id = %s AND product_id = %s"""
    cursor.execute(select_query, (user_id, product_id))
    result = cursor.fetchone()
    cursor.fetchall()
    cursor.close()
    
    if not result:
        return None
    
    product_quantity = result["product_quantity"]
    
    return product_quantity


def add_to_order_cart(cart: order_cart_domain.Order_cart) -> order_cart_domain.Order_cart:
    order_cart_crud = order_cart_model.Order_cart.from_domain(order_cart_domain=cart)
    cursor = mysql_connection.cursor(dictionary=True)

    insert_query = "INSERT INTO order_cart (user_id, product_id, product_quantity, subtotal) VALUES (%s, %s, %s, %s)"
    cart_data = (
        order_cart_crud.user_id,
        order_cart_crud.product_id,
        order_cart_crud.product_quantity,
        order_cart_crud.subtotal
    )
    cursor.execute(insert_query, cart_data)
    cursor.close()
    
    return order_cart_crud.to_domain()


def get_total_from_subtotal_in_order_cart(user_id: int) -> float:
    cursor = mysql_connection.cursor(dictionary=True)
    query = """
        SELECT SUM(subtotal) as total
        FROM order_cart
        WHERE user_id = %s AND order_id IS NULL"""
    
    cursor.execute(query, (user_id,))
    result = cursor.fetchone()
    cursor.close()
    
    if result and result["total"]:
        result["total"] = round(result["total"], 2)
        return result["total"]
    else:
        return 0.0
    

def update_order_id_in_order_cart(user_id: int, order_id: int) -> None:
    cursor = mysql_connection.cursor(dictionary=True)

    update_query = """
                UPDATE order_cart 
                SET order_id = %s 
                WHERE user_id = %s AND order_id IS NULL"""
                
    cursor.execute(update_query, (order_id, user_id))
    cursor.close()