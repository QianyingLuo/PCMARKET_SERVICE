import os

environment_variables = dict()

def get_mandatory_env_var(name: str) -> str:
    value = os.environ.get(name)

    if value is None:
        raise ValueError(f"{name} environment variable is not found.")
    
    environment_variables[name] = value 
    return value

def get_env_var(name: str, default_value: str) -> str:
    value = os.environ.get(name, default_value)
    environment_variables[name] = value

    return value

def print_env_vars():
    for key, value in environment_variables.items():
        print(f"    {key}:  {value}")

SECRET_KEY = get_mandatory_env_var("SECRET_KEY")
ALGORITHM = get_mandatory_env_var("ALGORITHM")
ACCESS_TOKEN_EXPIRE_MINUTES = int(get_env_var("ACCESS_TOKEN_EXPIRE_MINUTES", 15))
HOST = get_env_var("DB_HOST", "localhost")
PORT = int(get_env_var("DB_PORT", "3306"))
USER = get_env_var("DB_USER", "root")
PASSWORD = get_mandatory_env_var("DB_PASSWORD")
DATABASE = get_env_var("DB_NAME", "pcmarket")
SCRIPT_PATH = get_env_var("DB_SCRIPT", "db/tables.sql")
NUMBER_TOP_PRODUCTS = int(get_env_var("NUMBER_TOP_PRODUCTS", "4")) 

print_env_vars()