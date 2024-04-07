SELECT 
    order_details.id AS order_details_id, 
    order_details.order_id, 
    order_details.product_id, 
    order_details.quantity, 
    orders.id AS order_id, 
    orders.customer_id, 
    orders.employee_id AS order_employee_id, 
    orders.date AS order_date, 
    orders.shipper_id, 
    customers.id AS customer_id, 
    customers.name AS customer_name, 
    customers.contact, 
    customers.address AS customer_address, 
    customers.city AS customer_city, 
    customers.postal_code AS customer_postal_code, 
    customers.country AS customer_country, 
    products.id AS product_id, 
    products.name AS product_name, 
    products.supplier_id, 
    products.category_id, 
    products.unit, 
    products.price, 
    categories.id AS category_id, 
    categories.name AS category_name, 
    categories.description AS category_description, 
    employees.employee_id AS employee_id, 
    employees.last_name, 
    employees.first_name, 
    employees.birthdate, 
    employees.photo, 
    employees.notes, 
    shippers.id AS shipper_id, 
    shippers.name AS shipper_name, 
    shippers.phone, 
    suppliers.id AS supplier_id, 
    suppliers.name AS supplier_name, 
    suppliers.contact AS supplier_contact, 
    suppliers.address AS supplier_address, 
    suppliers.city AS supplier_city, 
    suppliers.postal_code AS supplier_postal_code, 
    suppliers.country AS supplier_country, 
    suppliers.phone AS supplier_phone
FROM 
    order_details
INNER JOIN 
    orders ON order_details.order_id = orders.id
INNER JOIN 
    customers ON orders.customer_id = customers.id
INNER JOIN 
    products ON order_details.product_id = products.id
INNER JOIN 
    categories ON products.category_id = categories.id
INNER JOIN 
    employees ON orders.employee_id = employees.employee_id
INNER JOIN 
    shippers ON orders.shipper_id = shippers.id
INNER JOIN 
    suppliers ON products.supplier_id = suppliers.id
WHERE 
    employees.employee_id > 3 AND employees.employee_id <= 10;
