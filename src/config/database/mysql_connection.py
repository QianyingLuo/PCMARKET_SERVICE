import sys
import mysql.connector as mysql_connector
from mysql.connector.abstracts import MySQLConnectionAbstract
from mysql.connector.pooling import PooledMySQLConnection
from ... import config
from ...config.log import logger
from ...config import exception_messages

def connect(host, port, user, password, database_name):
    try:
        connection = mysql_connector.connect(
            host=host,
            port=port,
            user=user,
            password=password,
            database=database_name,
            autocommit=True
        )
        return connection

    except Exception as error:
        logger.error(exception_messages.CONNECTION_ERROR)
        logger.error(exception_messages.DETAILED_ERROR(error))
        sys.exit(1)

mysql_connection = connect(config.HOST, config.PORT, config.DATABASE_USER, config.DATABASE_PASSWORD, config.DATABASE_NAME)

def get_mysql_connection() -> PooledMySQLConnection | MySQLConnectionAbstract:
    if mysql_connection.is_connected():
        return mysql_connection
    
    return mysql_connection
