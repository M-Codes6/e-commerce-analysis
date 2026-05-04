--- Simple Subquerys ---
SELECT first_name , last_name
FROM view_customer_revenue_metrics
WHERE total_spent > ( SELECT AVG(total_spent) FROM view_customer_revenue_metrics);


--- Subquerys with email ---
SELECT first_name, email
FROM customers
WHERE customer_id IN (SELECT customer_id FROM orders WHERE total_amount > 500);



--- The subquery approach Double nested ---
SELECT first_name, last_name
FROM customers
WHERE customer_id = 
(SELECT customer_id FROM orders WHERE total_amount = 
(SELECT MAX(total_amount) FROM orders ) );



--- join with subquery ---
SELECT c.first_name, c.last_name
From customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.total_amount = (SELECT MAX(total_amount) FROM orders);



--- Underperformer ---
SELECT first_name , email
FROM customers
WHERE customer_id IN (
     SELECT customer_id  
     FROM orders
     WHERE total_amount < (
     SELECT AVG(total_amount) FROM orders )
);



--- Recent Buyer ---
SELECT first_name, last_name 
FROM customers
WHERE customer_id IN (
    SELECT customer_id 
    FROM orders 
    WHERE order_date = (SELECT MAX(order_date) FROM orders)
);


--- Big Spender ---
SELECT first_name 
FROM customers 
WHERE customer_id IN (
    SELECT customer_id 
    FROM orders 
    WHERE total_amount > 800
); 
