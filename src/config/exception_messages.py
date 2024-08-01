EMAIL_ALREADY_EXISTS_EXCEPTION = "El email introducido ya consta como registrado"
NOT_AUTHORIZED_USER_EXCEPTION = "Los datos introducidos no son válidos"
PRODUCT_ALREADY_EXISTS_EXCEPTION = "El producto introducido ya consta en base de datos"
PRODUCT_IMAGE_PATH_ALREADY_EXISTS_EXCEPTION = "La ruta de imagen introducida ya consta en base de datos"

USER_NOT_FOUND =  "User not found"
PRODUCT_NOT_FOUND =  "Product not found"
CART_NOT_FOUND =  "Cart not found"
TEMPORARY_CART_NOT_FOUND = "No items found in temporary cart"

GENERIC_ERROR = "Algo ha salido mal . . ."
CONNECTION_ERROR = "Failed to connect to database. Please, check database credentials."

def DATABASE_LOADER_ERROR(script_path: str) -> str: 
    return f"Error loading MySQL database from: {script_path}"

def DETAILED_ERROR(message: str) -> str:
    return f"DETAILED_MESSAGE: {str(message)}"