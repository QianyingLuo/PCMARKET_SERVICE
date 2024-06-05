from aiomysql import Error

from ..models.user import User
from ..mysql_connection import mysql_connection

async def save(user: User):
    try:
        query = "INSERT INTO user (name, email, password, address, phone) VALUES (%s, %s, %s, %s, %s)"
        user_data = (
            user.name,
            user.email,
            user.password,
            user.address,
            user.phone
        )

        cursor = mysql_connection.cursor()
        cursor.execute(query, user_data)

        print("Usuario guardado correctamente")

    except Error as e:
        print("Error al guardar el usuario:", type(e).__name__, e)

    finally:
        cursor.close()
