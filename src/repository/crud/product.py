from ..models import product as product_model
from ...config.database.mysql_connection import mysql_connection

def get_all():
    products: list[product_model.Product] = []

    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product")
    rows = cursor.fetchall()

    for row in rows:
        product = product_model.Product.model_validate(row)
        products.append(product)

    return [product.to_domain() for product in products]

def get_top_products_by_type(product_type: str, limit: int):
    products: list[product_model.Product] = []

    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product WHERE type = %s LIMIT %s", (product_type, limit))
    rows = cursor.fetchall()

    for row in rows:
        product = product_model.Product.model_validate(row)
        products.append(product)

    return [product.to_domain() for product in products]

def get_products_by_type(product_type: str):
    products: list[product_model.Product] = []

    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product WHERE type = %s", (product_type,))
    rows = cursor.fetchall()

    for row in rows:
        product = product_model.Product.model_validate(row)
        products.append(product)
        
    return [product.to_domain() for product in products]

def get_discounted_products():
    discounted_products: list[product_model.Product] = []

    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product WHERE discount_decimal != 0")
    rows = cursor.fetchall()

    for row in rows:
        discounted_product = product_model.Product.model_validate(row)
        discounted_products.append(discounted_product)

    return [discounted_product.to_domain() for discounted_product in discounted_products]

def get_product_by_id(product_id: int):
    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product WHERE id = %s", (product_id,))
    product_data = cursor.fetchone()
    product: product_model.Product = product_model.Product.model_validate(product_data)
    return product.to_domain()

def get_random_products_by_type(product_type: str, limit: int):
    products: list[product_model.Product] = []

    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product WHERE type = %s ORDER BY RAND() LIMIT %s", (product_type, limit))
    rows = cursor.fetchall()

    for row in rows:
        product = product_model.Product.model_validate(row)
        products.append(product)

    return [product.to_domain() for product in products]

