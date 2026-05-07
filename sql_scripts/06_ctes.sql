
-- This file refactors the subqueries from day 05 into more readable CTEs.

WITH avg_calculation AS (

    -- We calculate the single average value once here
    SELECT AVG(total_amount) AS benchmark FROM orders
)

SELECT c.first_name, o.total_amount, a.benchmark
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id -- Join names to their orders
CROSS JOIN avg_calculation a -- "Attach" the average value to every row
WHERE o.total_amount < a.benchmark; -- Now we compare the order to the average



WITH latest_date AS (
   
    SELECT MAX(order_date) AS benchmark 
    FROM orders
)

SELECT c.first_name, c.last_name, a.benchmark
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id 
CROSS JOIN latest_date a 
WHERE o.order_date = a.benchmark; 





WITH customer_counts AS (

     SELECT customer_id, COUNT(order_id) AS order_count
     FROM orders
     GROUP BY customer_id 
), 

loyalty_benchmark AS (
     SELECT AVG(order_count) AS avg_val
     FROM customer_counts 

)

SELECT 
    c.first_name, 
    c.email, 

    (SELECT COUNT(*) FROM orders o WHERE o.customer_id = c.customer_id) 
    AS your_total_orders,
    lb.avg_val AS company_avg

FROM customers c
CROSS JOIN loyalty_benchmark lb
WHERE (SELECT COUNT(*) FROM orders o 
       WHERE o.customer_id = c.customer_id) > lb.avg_val;








