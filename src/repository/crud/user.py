from ...domain import user as user_domain
from ..models import user as user_model
from ...config.database.mysql_connection import mysql_connection

def save(user: user_domain.User) -> user_domain.User:
    user_crud = user_model.User.from_domain(user_domain=user)
    cursor = mysql_connection.cursor()

    insert_query = "INSERT INTO user (name, email, password, type) VALUES (%s, %s, %s, %s)"
    user_data = (
        user_crud.name,
        user_crud.email,
        user_crud.password,
        user_crud.type
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
    
def get_user_by_id(id: int):
    cursor = mysql_connection.cursor(dictionary=True)
    query = "SELECT * FROM user WHERE id = %s LIMIT 1"
    cursor.execute(query, (id,))
    user_data = cursor.fetchone()
    cursor.close()
     
    if user_data:
        return user_domain.User.model_validate(user_data)
    else:
        return None

def get_all() -> list[user_domain.User]:
    users: list[user_model.User] = []

    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM user")
    rows = cursor.fetchall()

    for row in rows:
        user = user_model.User.model_validate(row)
        users.append(user)

    return [user.to_domain() for user in users]

def delete_user(user_id: int) -> None:
    cursor = mysql_connection.cursor()
    delete_query = "DELETE FROM user WHERE id = %s"
    cursor.execute(delete_query, (user_id,))
    cursor.close()