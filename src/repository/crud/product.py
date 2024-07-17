from ..models import product as product_model
from ...domain import product as product_domain
from ...config.database.mysql_connection import mysql_connection

def get_all() -> list[product_domain.Product]:
    products: list[product_model.Product] = []

    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product")
    rows = cursor.fetchall()

    for row in rows:
        product = product_model.Product.model_validate(row)
        products.append(product)

    return [product.to_domain() for product in products]


def get_top_products_by_type(product_type: str, limit: int) -> list[product_domain.Product]:
    products: list[product_model.Product] = []

    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product WHERE type = %s LIMIT %s", (product_type, limit))
    rows = cursor.fetchall()

    for row in rows:
        product = product_model.Product.model_validate(row)
        products.append(product)

    return [product.to_domain() for product in products]


def get_products_by_type(product_type: str) -> list[product_domain.Product]:
    products: list[product_model.Product] = []

    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product WHERE type = %s", (product_type,))
    rows = cursor.fetchall()

    for row in rows:
        product = product_model.Product.model_validate(row)
        products.append(product)
        
    return [product.to_domain() for product in products]


def get_discounted_products() -> list[product_domain.Product]:
    discounted_products: list[product_model.Product] = []

    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product WHERE discount_decimal != 0")
    rows = cursor.fetchall()

    for row in rows:
        discounted_product = product_model.Product.model_validate(row)
        discounted_products.append(discounted_product)

    return [discounted_product.to_domain() for discounted_product in discounted_products]


def get_product_by_id(product_id: int) -> product_domain.Product:
    cursor = mysql_connection.cursor(dictionary=True)

    query = "SELECT * FROM product WHERE id = %s LIMIT 1"
    cursor.execute(query, (product_id,))
    product_data = cursor.fetchone()

    if not product_data:
        return None
    
    product: product_model.Product = product_model.Product.model_validate(product_data)
    return product.to_domain()


def get_random_products_by_type(product_type: str, limit: int) -> list[product_domain.Product]:
    products: list[product_model.Product] = []

    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product WHERE type = %s ORDER BY RAND() LIMIT %s", (product_type, limit))
    rows = cursor.fetchall()
    for row in rows:
        product = product_model.Product.model_validate(row)
        products.append(product)

    return [product.to_domain() for product in products]


def get_description_sections(product_id: int) -> list[product_model.DescriptionSection]:
    descriptions_sections: list[product_model.DescriptionSection] = []

    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM description_section WHERE product_id = %s", (product_id,))
    rows = cursor.fetchall()

    for row in rows:
        description_section = product_model.DescriptionSection.model_validate(row)
        descriptions_sections.append(description_section)

    return [description_section.to_domain() for description_section in descriptions_sections]


def get_description_list(product_id: int) -> product_model.DescriptionList:
    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM description_list WHERE product_id = %s", (product_id,))
    result = cursor.fetchall()

    if not result:
        return None
    
    return product_model.DescriptionList.model_validate(result[0]).to_domain()


def get_description_dictionary(product_id: int) -> product_model.DescriptionDictionary:
    cursor = mysql_connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM description_dictionary WHERE product_id = %s", (product_id,))
    result = cursor.fetchall()

    if not result:
        return None

    return product_model.DescriptionDictionary.model_validate(result[0]).to_domain()