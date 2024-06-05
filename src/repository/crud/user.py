from ...useful import exceptions
from ..models.user import User
from ..mysql_connection import mysql_connection
from mysql.connector import Error

def save(user: User) -> User:
    check_query = "SELECT 1 FROM user WHERE email = %s"
    cursor = mysql_connection.cursor()
    cursor.execute(check_query, (user.email,))
    result = cursor.fetchone()
    
    if result:
        raise exceptions.EmailAlreadyExists(f"El email {user.email} ya está registrado.")

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

def get_user_by_email(email: str) -> User:
    try:
        cursor = mysql_connection.cursor(dictionary=True)
        query = "SELECT * FROM user WHERE email = %s"
        cursor.execute(query, (email,))
        user_data = cursor.fetchone()
        cursor.close()
        
        if user_data:
            return User(
                id=user_data["id"],
                name=user_data["name"],
                email=user_data["email"],
                password=user_data["password"],
                address=user_data["address"],
                phone=user_data["phone"],
                is_active=user_data["is_active"]
            )
        else:
            return None
    except Error as e:
        print(f"Error: {e}")
        return None
