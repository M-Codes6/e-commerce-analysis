
--- Ranking Products By Price

SELECT product_name, category_id, price,
RANK() OVER(PARTITION BY category_id ORDER BY price DESC) AS price_rank
FROM products;


--- Running Total (Accumulation)

SELECT order_id, order_date, total_amount,
SUM(total_amount) OVER(ORDER BY order_date) AS running_total
FROM orders;


--- Average comparison

SELECT product_name, price, 
AVG(price) OVER(PARTITION BY category_id) AS category_avg
FROM products;


--- Big Spender ( context)

SELECT customer_id, order_date, total_amount,
MAX(total_amount) OVER(PARTITION BY customer_id) AS order_amount
FROM orders;



--- Market Share ( Percentage)

SELECT product_name, price,
(price / SUM(price) OVER()) * 100 AS percentage_of_total_stock
FROM products;



--- TOP 2 Filter ( Advanced Logic)

         --- step1 ( The Ladder ) create a CTE that calculates the rank
         
WITH product_leaderboard AS(

SELECT product_name, category_id, price,
RANK() OVER(PARTITION BY category_id ORDER BY price DESC) as p_rank
FROM products

)

        --- Step 2 (The Filter): Use that rank in a WHERE clause.
         
SELECT * FROM product_leaderboard   
WHERE p_rank <= 2;





