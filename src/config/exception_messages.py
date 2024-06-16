EMAIL_ALREADY_EXISTS_EXCEPTION = "El email introducido ya consta como registrado"
NOT_AUTHORIZED_USER_EXCEPTION = "Los datos introducidos no son válidos"

PRODUCT_NOT_FOUND =  "Product not found"

GENERIC_ERROR = "Algo ha salido mal . . ."
CONNECTION_ERROR = "Failed to connect to database. Please, check database credentials."

def DATABASE_LOADER_ERROR(script_path: str) -> str: 
    return f"Error loading MySQL database from: {script_path}"

def DETAILED_ERROR(message: str) -> str:
    return f"DETAILED_MESSAGE: {str(message)}"