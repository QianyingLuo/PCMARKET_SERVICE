from ..models import product as product_model
from ...domain import product as product_domain
from ..models import product as product_crud_domain
from ...config.database.mysql_connection import get_mysql_connection

def get_all() -> list[product_domain.Product]:
    products: list[product_model.Product] = []

    connection = get_mysql_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product")
    rows = cursor.fetchall()

    for row in rows:
        product = product_model.Product.model_validate(row)
        products.append(product)

    return [product.to_domain() for product in products]


def get_top_products_by_type(product_type: str, limit: int) -> list[product_domain.Product]:
    products: list[product_model.Product] = []

    connection = get_mysql_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product WHERE type = %s LIMIT %s", (product_type, limit))
    rows = cursor.fetchall()

    for row in rows:
        product = product_model.Product.model_validate(row)
        products.append(product)

    return [product.to_domain() for product in products]


def get_products_by_type(product_type: str) -> list[product_domain.Product]:
    products: list[product_model.Product] = []

    connection = get_mysql_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product WHERE type = %s", (product_type,))
    rows = cursor.fetchall()

    for row in rows:
        product = product_model.Product.model_validate(row)
        products.append(product)
        
    return [product.to_domain() for product in products]


def get_discounted_products() -> list[product_domain.Product]:
    discounted_products: list[product_model.Product] = []

    connection = get_mysql_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product WHERE discount_decimal != 0")
    rows = cursor.fetchall()

    for row in rows:
        discounted_product = product_model.Product.model_validate(row)
        discounted_products.append(discounted_product)

    return [discounted_product.to_domain() for discounted_product in discounted_products]


def get_product_by_id(product_id: int) -> product_domain.Product:
    connection = get_mysql_connection()
    cursor = connection.cursor(dictionary=True)

    query = "SELECT * FROM product WHERE id = %s LIMIT 1"
    cursor.execute(query, (product_id,))
    product_data = cursor.fetchone()

    if not product_data:
        return None
    
    product: product_model.Product = product_model.Product.model_validate(product_data)
    return product.to_domain()


def get_random_products_by_type(product_type: str, limit: int) -> list[product_domain.Product]:
    products: list[product_model.Product] = []

    connection = get_mysql_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM product WHERE type = %s ORDER BY RAND() LIMIT %s", (product_type, limit))
    rows = cursor.fetchall()
    for row in rows:
        product = product_model.Product.model_validate(row)
        products.append(product)

    return [product.to_domain() for product in products]


def get_description_sections(product_id: int) -> list[product_model.DescriptionSection]:
    descriptions_sections: list[product_model.DescriptionSection] = []

    connection = get_mysql_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM description_section WHERE product_id = %s", (product_id,))
    rows = cursor.fetchall()

    for row in rows:
        description_section = product_model.DescriptionSection.model_validate(row)
        descriptions_sections.append(description_section)

    return [description_section.to_domain() for description_section in descriptions_sections]


def get_description_list(product_id: int) -> product_model.DescriptionList:
    connection = get_mysql_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM description_list WHERE product_id = %s", (product_id,))
    result = cursor.fetchall()

    if not result:
        return None
    
    return product_model.DescriptionList.model_validate(result[0]).to_domain()


def get_description_dictionary(product_id: int) -> product_model.DescriptionDictionary:
    connection = get_mysql_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM description_dictionary WHERE product_id = %s", (product_id,))
    result = cursor.fetchall()

    if not result:
        return None

    return product_model.DescriptionDictionary.model_validate(result[0]).to_domain()

def get_product_by_name(name: str):
    connection = get_mysql_connection()
    cursor = connection.cursor(dictionary=True)
    query = "SELECT * FROM product WHERE name = %s LIMIT 1"
    cursor.execute(query, (name,))
    product_data = cursor.fetchone()
    cursor.close()
     
    if product_data:
        return product_domain.Product.model_validate(product_data)
    else:
        return None
    
def get_product_by_image_path(image: str):
    connection = get_mysql_connection()
    cursor = connection.cursor(dictionary=True)
    query = "SELECT * FROM product WHERE image = %s LIMIT 1"
    cursor.execute(query, (image,))
    product_data = cursor.fetchone()
    cursor.close()
     
    if product_data:
        return product_domain.Product.model_validate(product_data)
    else:
        return None

    
def add_product(product: product_domain.Product) -> product_domain.Product:

    product_crud = product_crud_domain.Product.from_domain(product_domain=product)
    connection = get_mysql_connection()
    cursor = connection.cursor(dictionary=True)

    insert_query = "INSERT INTO product (image, name, description, type, brand, stock, price, discount_decimal, stars) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
    product_data = (
        product_crud.image,
        product_crud.name,
        product_crud.description,
        product_crud.type,
        product_crud.brand,
        product_crud.stock,
        product_crud.price,
        product_crud.discount_decimal,
        product_crud.stars
    )
    cursor.execute(insert_query, product_data)
    cursor.close()
    
    return product

def delete_product(product_id: int) -> None:
    connection = get_mysql_connection()
    cursor = connection.cursor(dictionary=True)
    delete_query = "DELETE FROM product WHERE id = %s"
    cursor.execute(delete_query, (product_id,))
    cursor.close()

def update_product(product: product_domain.Product) -> product_domain.Product:
    values = [
        product.description,
        product.type,
        product.brand,
        product.stock,
        product.price,
        product.discount_decimal,
        product.stars
    ]

    product_crud = product_crud_domain.Product.from_domain(product_domain=product)
    connection = get_mysql_connection()
    cursor = connection.cursor(dictionary=True)

    query: str = "UPDATE product SET description=%s, type=%s, brand=%s, stock=%s, price=%s,discount_decimal=%s, stars=%s"
    if product_crud.image:
        query += ", image=%s"
        values.append(product_crud.image)

    if product_crud.name:
        query += ", name=%s"
        values.append(product_crud.name)

    query += " WHERE id=%s"
    values.append(product_crud.id)
    
    cursor.execute(query, values)
    cursor.close()
    
    return product

def deduct_product_quantity(product_id: int, product_quantity: int) -> None:
    connection = get_mysql_connection()
    cursor = connection.cursor(dictionary=True)
    
    query_get_stock = "SELECT stock FROM product WHERE id = %s FOR UPDATE"
    cursor.execute(query_get_stock, (product_id,))
    result = cursor.fetchone()

    current_stock = result['stock']

    new_stock = current_stock - product_quantity
    query_update_stock = "UPDATE product SET stock = %s WHERE id = %s"
    cursor.execute(query_update_stock, (new_stock, product_id))

    cursor.close()