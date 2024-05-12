import os
import sys
import aiomysql
import mysql.connector as mysql_connector

HOST = os.environ.get("DB_HOST")
PORT = int(os.environ.get("DB_PORT"))
USER = os.environ.get("DB_USER")
PASSWORD = os.environ.get("DB_PASSWORD")
DATABASE = os.environ.get("DB_NAME")
SCRIPT_PATH = os.environ.get("DB_SCRIPT")

def connect(host, port, user, password, database):
    try:
        connection = mysql_connector.connect(
            host=host,
            port=port,
            user=user,
            password=password,
            database=database,
            autocommit=True
        )
    
        return connection
    
    except Exception as error:
        print("No se ha podido conectar a la base de datos: ", error)
        sys.exit(1)


mysql_connection = connect(HOST, PORT, USER, PASSWORD, DATABASE)

async def get_mysql_pool(host, port, user, password, db):
    
    try:
        pool = await aiomysql.create_pool(
                host=host,
                port=port,
                user=user,
                password=password,
                db=db
        )  
        return pool
    
    except Exception as error:
        raise ConnectionError("No se pudo conectar a la base de datos, revisa las credenciales y el host") from error

async def load_database():
    
    try:
        pool = await get_mysql_pool(HOST, PORT, USER, PASSWORD, DATABASE)
        
    except ConnectionError as error:
        sys.exit(1)
    
    try:
        with open(SCRIPT_PATH, 'r') as file:
            sql_script = file.read()
        async with pool.acquire() as conn:
            async with conn.cursor() as cur:
                await cur.execute(sql_script)
                await conn.commit()
                print("Script SQL ejecutado correctamente")
    except Exception as error:
        print("Error al ejecutar el script SQL:" , error)
        sys.exit(1)

    finally:
        pool.close()
        await pool.wait_closed()

