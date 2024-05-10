from ..models.user import User
from ..mysql_connection import mysql_connection
from aiomysql import Error

async def save(user: User):
    try:
        query = "INSERT INTO user (username, password, email, full_name, address, phone) VALUES (%s, %s, %s, %s, %s, %s)"
        user_data = (user.username, user.password, user.email, user.full_name, user.address, user.phone)
        
        cursor = mysql_connection.cursor()
        cursor.execute(query, user_data)
        mysql_connection.commit()
        
        print("Usuario guardado correctamente")
        
    except Error as e:
        print("Error al guardar el usuario:",  type(e).__name__, e)
        
    finally:
        cursor.close()
