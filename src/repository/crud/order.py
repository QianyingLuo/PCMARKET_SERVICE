from ..models import order as order_model
from ...domain import order as order_domain
from ...config.database.mysql_connection import mysql_connection

def save_order(order: order_domain.Order) -> int:
    order_crud = order_model.Order.from_domain(order_domain=order)
    cursor = mysql_connection.cursor(dictionary=True)

    insert_query = "INSERT INTO order_table (user_id, amount) VALUES (%s, %s)"
    order_data = (
        order_crud.user_id,
        order_crud.amount
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