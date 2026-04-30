SELECT c.first_name, c.last_name,
SUM(o.total_amount) AS total_spent
FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC;