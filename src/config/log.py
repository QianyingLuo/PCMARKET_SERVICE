import logging
from logging import Logger

def setup_logger(name: str, log_file: str = None, level: int = logging.INFO) -> Logger:
    logger = logging.getLogger(name)
    logger.setLevel(level)
    
    formatter = logging.Formatter('%(asctime)s: %(levelname)-2s %(filename)s - %(message)s', datefmt='%Y-%m-%d %H:%M:%S')
    
    console_handler = logging.StreamHandler()
    console_handler.setFormatter(formatter)
    
    #file_handler = RotatingFileHandler(log_file, maxBytes=5*1024*1024, backupCount=2)
    #file_handler.setFormatter(formatter)
    
    logger.addHandler(console_handler)
    #logger.addHandler(file_handler)
    
    return logger

logger = setup_logger('my_logger', None)