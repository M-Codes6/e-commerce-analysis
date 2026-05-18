
-- Adding a CHECK constraint to guarantee positive pricing

ALTER TABLE products
ADD CONSTRAINT check_positive_price CHECK ( price > 0);

-- Testing above constraint
INSERT INTO products (product_name, category_id, price) 
VALUES ('Broken Screen Protector', 2, -5.00);



-- Adding  a Deafult constraint


ALTER TABLE orders
ALTER COLUMN order_date SET DEFAULT (current_date);


-- Testing default constraint 

INSERT INTO orders (customer_id, total_amount)
VALUES (1, 99.99);

SELECT * FROM orders WHERE total_amount = 99.99;



ALTER TABLE orders 
ADD COLUMN status VARCHAR(20) DEFAULT 'Peding';

SELECT * FROM orders ;