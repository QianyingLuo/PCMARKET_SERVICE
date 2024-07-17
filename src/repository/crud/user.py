from ...domain import user as user_domain
from ..models import user as user_crud_domain
from ...config.database.mysql_connection import mysql_connection

def save(user: user_domain.User) -> user_domain.User:
    user_crud = user_crud_domain.User.from_domain(user_domain=user)
    cursor = mysql_connection.cursor()

    insert_query = "INSERT INTO user (name, email, password, address, phone) VALUES (%s, %s, %s, %s, %s)"
    user_data = (
        user_crud.name,
        user_crud.email,
        user_crud.password,
        user_crud.address,
        user_crud.phone,
    )
    cursor.execute(insert_query, user_data)
    cursor.close()
    
    return user


def get_user_by_email(email: str):
    cursor = mysql_connection.cursor(dictionary=True)
    query = "SELECT * FROM user WHERE email = %s LIMIT 1"
    cursor.execute(query, (email,))
    user_data = cursor.fetchone()
    cursor.close()
     
    if user_data:
        return user_domain.User.model_validate(user_data)
    else:
        return None