import os
import aiomysql
import mysql.connector as mysql_connector
import mysql.connector


HOST = os.environ.get("DB_HOST")
PORT = int(os.environ.get("DB_PORT"))
USER = os.environ.get("DB_USER")
PASSWORD = os.environ.get("DB_PASSWORD")
DATABASE = os.environ.get("DB_NAME")
SCRIPT = os.environ.get("DB_SCRIPT")
    
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
    
    except mysql.connector.Error as error:
        print("Error al conectar a la base de datos MySQL:", error)
        return None


mysql_connection = connect(HOST, PORT, USER, PASSWORD, DATABASE)

async def get_mysql_pool(host, port, user, password, db):
    pool = await aiomysql.create_pool(
            host=host,
            port=port,
            user=user,
            password=password,
            db=db
    )  
    return pool

async def load_database():
    script_path = SCRIPT
    
    pool = await get_mysql_pool(HOST, PORT, USER, PASSWORD, DATABASE)
    
    try:
        with open(script_path, 'r') as file:
            sql_script = file.read()
        async with pool.acquire() as conn:
            async with conn.cursor() as cur:
                await cur.execute(sql_script)
                await conn.commit()
                print("Script SQL ejecutado correctamente")
    except aiomysql.Error as e:
        print("Error al ejecutar el script SQL:", type(e).__name__, e)
    finally:
        pool.close()
        await pool.wait_closed()

