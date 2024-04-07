SELECT 
	categories.name AS category_name, 
    COUNT(*) AS row_count, 
    AVG(order_details.quantity) AS avg_quantity
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
    employees.employee_id > 3 AND employees.employee_id <= 10
GROUP BY 
    category_name
HAVING 
    avg_quantity > 21
ORDER BY
	row_count DESC
LIMIT 4
OFFSET 1;
	