

CREATE OR REPLACE VIEW view_inactive_customers AS
SELECT c.customer_id, c.first_name,  c.last_name, c.email
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


SELECT * FROM  view_inactive_customers;


CREATE OR REPLACE VIEW view_customer_revenue_metrics AS 
SELECT c.first_name, c.last_name,
COUNT(o.order_id) AS total_orders,
SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

SELECT * FROM view_customer_revenue_metrics WHERE total_spent > 500;



