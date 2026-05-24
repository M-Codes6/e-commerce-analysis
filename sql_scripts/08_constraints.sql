
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


-- Adding a Default Constraint

ALTER TABLE orders 
ADD COLUMN status VARCHAR(20) DEFAULT 'Peding';

SELECT * FROM orders ;


-- Adding a Check constraint

ALTER TABLE customers 
ADD CONSTRAINT check_name_not_blank CHECK(first_name != '');


SELECT * FROM customers ;


ALTER TABLE orders 
ADD COLUMN quantity INT
CONSTRAINT check_quantity CHECK (quantity > 0);

SELECT * FROM orders ;



ALTER TABLE customers
ADD COLUMN account_status VARCHAR(20) DEFAULT 'ACTIVE';


