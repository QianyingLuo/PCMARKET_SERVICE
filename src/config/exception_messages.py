EMAIL_ALREADY_EXISTS_EXCEPTION = "El email introducido ya consta como registrado"
NOT_AUTHORIZED_USER_EXCEPTION = "Los datos introducidos no son válidos"

PRODUCT_NOT_FOUND =  "Product not found"
CART_NOT_FOUND =  "Cart not found"
TEMPORARY_CART_NOT_FOUND = "No items found in temporary cart"

GENERIC_ERROR = "Algo ha salido mal . . ."
CONNECTION_ERROR = "Failed to connect to database. Please, check database credentials."
ADD_IN_CART_ERROR = "Failed to add product to cart."
EDIT_QUANTITY_IN_CART_ERROR = "Failed to edit product quantity in cart."
DELETE_PRODUCT_IN_CART_ERROR = "Failed to delete product in cart."

def DATABASE_LOADER_ERROR(script_path: str) -> str: 
    return f"Error loading MySQL database from: {script_path}"

def DETAILED_ERROR(message: str) -> str:
    return f"DETAILED_MESSAGE: {str(message)}"