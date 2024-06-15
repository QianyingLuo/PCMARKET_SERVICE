import sys
import aiomysql

from ... import config
from ..log import logger
from .. import exception_messages

async def get_mysql_pool(host, port, user, password, db):

    try:
        pool = await aiomysql.create_pool(
            host=host, port=port, user=user, password=password, db=db, charset='utf8mb4', use_unicode=True
        )
        return pool

    except Exception as error:
        raise ConnectionError() from error


async def load_database():

    try:
        pool = await get_mysql_pool(config.HOST, config.PORT, config.USER, config.PASSWORD, config.DATABASE)

    except ConnectionError as error:
        logger.error(exception_messages.CONNECTION_ERROR)
        logger.error(exception_messages.DETAILED_ERROR(error))
        sys.exit(1)

    try:
        with open(config.SCRIPT_PATH, "r", encoding='utf-8') as file:
            sql_script = file.read()
        async with pool.acquire() as conn:
            async with conn.cursor() as cur:
                await cur.execute("SET NAMES utf8mb4 COLLATE utf8mb4_general_ci")
                await cur.execute(sql_script)
                await conn.commit()
                logger.info(f"MySQL database loaded successfully from: {config.SCRIPT_PATH}")
    except Exception as error:
        logger.error(exception_messages.DATABASE_LOADER_ERROR(config.SCRIPT_PATH))
        logger.error(exception_messages.DETAILED_ERROR(error))
        sys.exit(1)

    finally:
        pool.close()
        await pool.wait_closed()