from ...useful import exceptions
from ..models.user import User
from ..mysql_connection import mysql_connection

def save(user: User) -> User:
    # Comprobar si el correo electrónico ya existe
    check_query = "SELECT 1 FROM user WHERE email = %s"
    cursor = mysql_connection.cursor()
    cursor.execute(check_query, (user.email,))
    result = cursor.fetchone()
    
    if result:
        raise exceptions.EmailAlreadyExists(f"El email {user.email} ya está registrado.")

    # Insertar el nuevo usuario
    insert_query = "INSERT INTO user (name, email, password, address, phone) VALUES (%s, %s, %s, %s, %s)"
    user_data = (
        user.name,
        user.email,
        user.password,
        user.address,
        user.phone
    )
    cursor.execute(insert_query, user_data)
    cursor.close()
    
    return user
