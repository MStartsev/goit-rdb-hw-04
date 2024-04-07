-- У SQL-запиті використовуються LEFT JOIN та RIGHT JOIN 
-- для об'єднання таблиць. Таким чином, збільшення кількості 
-- рядків з 518 до 519 може бути наслідком використання різних
-- типів JOIN та наявності даних, які раніше були виключені 
-- в результаті INNER JOIN, але тепер включені через 
-- LEFT або RIGHT JOIN.

SELECT COUNT(*) AS row_count
FROM 
    order_details
LEFT JOIN  
    orders ON order_details.order_id = orders.id
RIGHT JOIN 
    customers ON orders.customer_id = customers.id
LEFT JOIN  
    products ON order_details.product_id = products.id
LEFT JOIN  
    categories ON products.category_id = categories.id
RIGHT JOIN  
    employees ON orders.employee_id = employees.employee_id
LEFT JOIN 
    shippers ON orders.shipper_id = shippers.id
LEFT JOIN 
    suppliers ON products.supplier_id = suppliers.id;
