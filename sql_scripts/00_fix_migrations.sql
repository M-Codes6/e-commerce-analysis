-- Fix the Customers table
ALTER TABLE customers 
RENAME COLUMN signup_data TO signup_date;

-- Fix the Orders table
ALTER TABLE orders 
RENAME COLUMN order_data TO order_date;