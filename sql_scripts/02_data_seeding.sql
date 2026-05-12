INSERT INTO customers (first_name, last_name, email, signup_date) VALUES
('Muzamil', 'Naik', 'abc@example.com', '2026-01-15'),
('Arjun', 'Sharma', 'arjun.s@example.com', '2026-01-20'),
('Sarah', 'Khan', 'sarah.k@example.com', '2026-02-05'),
('Priya', 'Patel', 'priya.p@example.com', '2026-02-10'),
('John', 'Doe', 'j.doe@example.com', '2026-02-12'),
('Sana', 'Malik', 'sana.m@example.com', '2026-03-01'),
('Amit', 'Singh', 'amit.v@example.com', '2026-03-05'),
('Zoya', 'Akhtar', 'zoya.a@example.com', '2026-03-10'),
('David', 'Warner', 'david.w@example.com', '2026-03-15'),
('Ishaan', 'Kapur', 'ishaan.k@example.com', '2026-03-20'),
('Aaliya', 'Akhtar', 'aaliya@example.com', '2026-04-1'),
('Eesaa', 'dar', 'eesa@example.com', '2026-03-15'),
('Ishaan', 'sharma', 'ishaan@example.com', '2026-03-20');


INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2026-01-16', 1500.00),
(1, '2026-02-20', 2500.50),
(2, '2026-01-22', 450.00),
(3, '2026-02-06', 120.75),
(3, '2026-02-15', 300.00),
(3, '2026-03-05', 850.00),
(4, '2026-02-11', 2100.00),
(6, '2026-03-02', 50.00),
(7, '2026-03-06', 999.99),
(7, '2026-03-15', 1200.00),
(1, '2026-04-10', 500.00),
(2, '2026-04-12', 150.00),
(8, '2026-03-12', 3000.00),
(8, '2026-04-01', 450.25),
(4, '2026-04-15', 125.00);


INSERT INTO products (product_name, category_id, price) VALUES
('Pro Laptop', 1, 1200.00),
('Budget Laptop', 1, 600.00),
('Gaming PC', 1, 2500.00),
('Wireless Mouse', 2, 25.00),
('Mechanical Keyboard', 2, 120.00),
('Webcam 4K', 2, 150.00),
('Smartphone X', 3, 999.00),
('Smartphone SE', 3, 450.00),
('Redmi note 9', 4, 200.00),
('Lenovo Laptop s14', 5, 500.00);
