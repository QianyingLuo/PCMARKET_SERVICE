from ...domain import delivery as delivery_domain
from ..models import delivery as delivery_crud_domain
from ...config.database.mysql_connection import mysql_connection

def save(delivery: delivery_domain.Delivery) -> delivery_domain.Delivery:
    delivery_crud = delivery_crud_domain.Delivery.from_domain(delivery_domain=delivery)
    cursor = mysql_connection.cursor()

    insert_query = "INSERT INTO delivery_info (user_id, first_name, last_name, address, complement_address, postcode, city, phone, country) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
    delivery_data = (
        delivery_crud.user_id,
        delivery_crud.first_name,
        delivery_crud.last_name,
        delivery_crud.address,
        delivery_crud.complement_address,
        delivery_crud.postcode,
        delivery_crud.city,
        delivery_crud.phone,
        delivery_crud.country
    )
    cursor.execute(insert_query, delivery_data)
    cursor.close()
    
    return delivery