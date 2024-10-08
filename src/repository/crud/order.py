import mysql.connector

from ..models import order as order_model
from ...domain import order as order_domain
from ...config.log import logger
from ...config.database.mysql_connection import mysql_connection

def save_order(order: order_domain.Order, delivery_info: dict) -> int:
    order_crud = order_model.Order.from_domain(order_domain=order)
    cursor = mysql_connection.cursor(dictionary=True)

    insert_query = '''INSERT INTO order_table (user_id, amount, first_name, 
                last_name, address, complement_address, postcode, 
                city, phone, country, status) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)'''
    order_data = (
        order_crud.user_id,
        order_crud.amount,
        delivery_info['first_name'], 
        delivery_info['last_name'], 
        delivery_info['address'], 
        delivery_info['complement_address'], 
        delivery_info['postcode'],
        delivery_info['city'],
        delivery_info['phone'], 
        delivery_info['country'],
        order_crud.status.value
    )
    cursor.execute(insert_query, order_data)

    order_id = cursor.lastrowid

    cursor.close()
    
    return order_id


def get_latest_delivery_info_by_user_id(user_id: int) -> dict:
    cursor = mysql_connection.cursor(dictionary=True)
    query = """
        SELECT first_name, last_name, address, complement_address, postcode, city, phone, country
        FROM delivery_info
        WHERE user_id = %s
        ORDER BY id DESC
        LIMIT 1"""
        
    cursor.execute(query, (user_id,))
    delivery_info = cursor.fetchone()
    cursor.close()
    
    return delivery_info


def update_order_with_delivery_info(order_id: int, delivery_info: dict) -> None:
    cursor = mysql_connection.cursor()
    update_query = """
                UPDATE order_table
                SET first_name = %s, last_name = %s, address = %s, complement_address = %s,
                postcode = %s, city = %s, phone = %s, country = %s
                WHERE id = %s"""

    cursor.execute(update_query, (
        delivery_info['first_name'], delivery_info['last_name'], delivery_info['address'], 
        delivery_info['complement_address'], delivery_info['postcode'], delivery_info['city'],
        delivery_info['phone'], delivery_info['country'], order_id
    ))

    cursor.close()


def delete_temporary_cart_by_user_id(user_id: int) -> None:
    cursor = mysql_connection.cursor()
    delete_query = "DELETE FROM temporary_cart WHERE user_id = %s"
    cursor.execute(delete_query, (user_id,))
    cursor.close()

def delete_delivery_info_by_user_id(user_id: int) -> None:
    cursor = mysql_connection.cursor()
    delete_query = "DELETE FROM delivery_info WHERE user_id = %s"
    cursor.execute(delete_query, (user_id,))
    cursor.close()

def get_order_exists_by_user_id(user_id: int) -> bool:
    cursor = mysql_connection.cursor(dictionary=True)
    query = "SELECT * FROM order_table WHERE user_id = %s LIMIT 1"
    cursor.execute(query, (user_id,))
    order_data = cursor.fetchone()
    cursor.close()
     
    if order_data:
        return True
    else:
        return False
    
def get_products_by_order_id(order_id: int) -> list[dict]:
    cursor = mysql_connection.cursor(dictionary=True)
    query = """
        SELECT oc.product_id, oc.product_quantity, oc.subtotal, p.name, p.image
        FROM order_cart oc
        JOIN product p ON oc.product_id = p.id
        WHERE oc.order_id = %s
    """
    cursor.execute(query, (order_id,))
    products = cursor.fetchall()
    cursor.close()

    return products


def get_orders_by_user_id(user_id: int) -> list[dict]:
    orders = []

    try:
        if not mysql_connection.is_connected():
            mysql_connection.connect()

        with mysql_connection.cursor(dictionary=True) as cursor:
            cursor.execute("SELECT * FROM order_table WHERE user_id = %s", (user_id,))
            rows = cursor.fetchall()

            if not rows:
                return []

            for row in rows:
                order = order_model.Order.model_validate(row).to_domain()
                products = get_products_by_order_id(order.id)
                order_dict = order.model_dump()
                order_dict['products'] = products
                orders.append(order_dict)

    except mysql.connector.Error as e:
        logger.error(f"Database operation failed: {str(e)}")
        return []

    return orders


def get_order_by_order_id(order_id: int) -> order_domain.Order:
    cursor = mysql_connection.cursor(dictionary=True)

    query = "SELECT * FROM order_table WHERE id = %s LIMIT 1"
    cursor.execute(query, (order_id,))
    order_data = cursor.fetchone()

    if not order_data:
        return None
    
    order: order_model.Order = order_model.Order.model_validate(order_data)
    return order.to_domain()


def product_reference_count(order_id: int) -> int:
    cursor = mysql_connection.cursor(dictionary=True)
    
    query = """
        SELECT COUNT(DISTINCT product_id) AS unique_product_count
        FROM order_cart
        WHERE order_id = %s
    """
    
    cursor.execute(query, (order_id,))
    result = cursor.fetchone()
    cursor.close()
    
    return result['unique_product_count'] if result else 0