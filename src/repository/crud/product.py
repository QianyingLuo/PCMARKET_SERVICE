from aiomysql import Error


from ..models import product as product_model
from ..mysql_connection import mysql_connection



def get_all():
    try:
        products: list[product_model.Product] = []
        cursor = mysql_connection.cursor(dictionary=True)
        cursor.execute("SELECT * FROM product")
        rows = cursor.fetchall()
        for row in rows:
            product = product_model.Product.model_validate(row)
            products.append(product)
        return [product.to_domain() for product in products]
    except Error as e:
        print("Error al obtener productos:", e)
        return []

def get_top_products_by_type(product_type: str, limit: int = 4):
    try:
        products: list[product_model.Product] = []
        cursor = mysql_connection.cursor(dictionary=True)
        cursor.execute("SELECT * FROM product WHERE type = %s LIMIT %s", (product_type, limit))
        rows = cursor.fetchall()
        for row in rows:
            product = product_model.Product.model_validate(row)
            products.append(product)
        return [product.to_domain() for product in products]
    except Error as e:
        print(f"Error al obtener productos del tipo {product_type}:", e)
        return []

def get_products_by_type(product_type: str):
    try:
        products: list[product_model.Product] = []
        cursor = mysql_connection.cursor(dictionary=True)
        cursor.execute("SELECT * FROM product WHERE type = %s", (product_type,))
        rows = cursor.fetchall()
        for row in rows:
            product = product_model.Product.model_validate(row)
            products.append(product)
        return [product.to_domain() for product in products]
    except Error as e:
        print(f"Error al obtener productos del tipo {product_type}:", e)
        return []

def get_discounted_products():
    try:
        discounted_products: list[product_model.Product] = []
        cursor = mysql_connection.cursor(dictionary=True)
        cursor.execute("SELECT * FROM product WHERE discount_percentage != 0")
        rows = cursor.fetchall()
        for row in rows:
            discounted_product = product_model.Product.model_validate(row)
            discounted_products.append(discounted_product)
        return [discounted_product.to_domain() for discounted_product in discounted_products]
    except Error as e:
        print(f"Error al obtener productos rebajados:", e)
        return []

def get_product_by_id(product_id: int):
    try:
        product: list[product_model.Product] = []
        cursor = mysql_connection.cursor(dictionary=True)
        cursor.execute("SELECT * FROM product WHERE id = %s", (product_id,))
        product_data = cursor.fetchone()
        product: product_model.Product = product_model.Product.model_validate(product_data)
        return product.to_domain()
    except Error as e:
        print(f"Error al obtener productos del tipo {product_id}:", e)
        return []

