import sys
import mysql.connector as mysql_connector

from ... import config
from ...config.log import logger
from ...config import exception_messages

def connect(host, port, user, password, database):
    try:
        connection = mysql_connector.connect(
            host=host,
            port=port,
            user=user,
            password=password,
            database=database,
            autocommit=True,
        )
        return connection

    except Exception as error:
        logger.error(exception_messages.CONNECTION_ERROR)
        logger.error(exception_messages.DETAILED_ERROR(error))
        sys.exit(1)


mysql_connection = connect(config.HOST, config.PORT, config.USER, config.PASSWORD, config.DATABASE)