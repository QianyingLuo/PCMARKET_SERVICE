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
        for script_path in config.SQL_PATHS:
            with open(script_path, "r", encoding='utf-8') as file:
                sql_script = file.read()
            async with pool.acquire() as conn:
                async with conn.cursor() as cur:
                    await cur.execute("SET NAMES utf8mb4 COLLATE utf8mb4_general_ci")
                    await cur.execute(sql_script)
                    await conn.commit()
                    logger.info(f"MySQL database loaded successfully from: {script_path}")
    except Exception as error:
        index = config.SQL_PATHS.index(script_path) if 'script_path' in locals() else 0
        current_script_path = config.SQL_PATHS[index]
        logger.error(exception_messages.DATABASE_LOADER_ERROR(current_script_path))
        logger.error(exception_messages.DETAILED_ERROR(error))
        sys.exit(1)

    finally:
        pool.close()
        await pool.wait_closed()