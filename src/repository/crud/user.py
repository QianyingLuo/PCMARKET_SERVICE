from ...useful import exceptions
from ...domain import user as user_domain
from ..models import user as user_crud_domain
from ..mysql_connection import mysql_connection
from mysql.connector import Error

def save(user: user_domain.User) -> user_domain.User:
    check_query = "SELECT 1 FROM user WHERE email = %s"

    user_crud: user_crud_domain.User = user_crud_domain.User.from_domain(user)

    cursor = mysql_connection.cursor()
    cursor.execute(check_query, (user_crud.email,))
    result = cursor.fetchone()
    
    if result:
        raise exceptions.EmailAlreadyExists(f"El email {user.email} ya está registrado.")

    insert_query = "INSERT INTO user (name, email, password, address, phone, is_active) VALUES (%s, %s, %s, %s, %s, %s)"
    user_data = (
        user_crud.name,
        user_crud.email,
        user_crud.password,
        user_crud.address,
        user_crud.phone,
        user_crud.is_active
    )
    cursor.execute(insert_query, user_data)
    cursor.close()
    
    return user

def get_user_by_email(email: str):
    try:
        cursor = mysql_connection.cursor(dictionary=True)
        query = "SELECT * FROM user WHERE email = %s"
        cursor.execute(query, (email,))
        user_data = cursor.fetchone()
        cursor.close()
     
        if user_data:
            return user_domain.User.model_validate(user_data)
        else:
            return None
        
    except Error as e:
        print(f"Error: {e}")
        return None
    except Exception as e:
        print(f"Error: {e}")
        return None
