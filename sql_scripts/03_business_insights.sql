SELECT c.first_name, c.last_name,
COUNT(o.order_id) AS total_orders,
SUM(o.total_amount) AS total_spent
FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC;


SELECT c.first_name, c.last_name, c.email
FROM customers c
LEFt JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
