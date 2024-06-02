from aiomysql import Error

from ..models.user import User
from ..mysql_connection import mysql_connection


async def save(user: User):
    try:
        query = "INSERT INTO user (username, password, email, full_name, address, phone) VALUES (%s, %s, %s, %s, %s, %s)"
        user_data = (
            user.name,
            user.email,
            user.password
        )

        cursor = mysql_connection.cursor()
        cursor.execute(query, user_data)

        print("Usuario guardado correctamente")

    except Error as e:
        print("Error al guardar el usuario:", type(e).__name__, e)

    finally:
        cursor.close()
