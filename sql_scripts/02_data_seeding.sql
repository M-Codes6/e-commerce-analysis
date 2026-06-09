


INSERT INTO categories (category_id, category_name) VALUES
(1, 'Laptops'),
(2, 'Accessories'),
(3, 'Smartphones'),
(4, 'Budget Phones'),
(5, 'Budget Laptops'),
(6, 'Tablets'),
(7, 'Monitors'),
(8, 'Audio'),
(9, 'Storage'),
(10, 'Networking');





INSERT INTO customers (first_name, last_name, email, signup_date) VALUES

-- Original records
('Muzamil',  'Naik',    'abc@example.com',        '2026-01-15'),
('Arjun',    'Sharma',  'arjun.s@example.com',    '2026-01-20'),
('Sarah',    'Khan',    'sarah.k@example.com',    '2026-02-05'),
('Priya',    'Patel',   'priya.p@example.com',    '2026-02-10'),
('John',     'Doe',     'j.doe@example.com',      '2026-02-12'),
('Sana',     'Malik',   'sana.m@example.com',     '2026-03-01'),
('Amit',     'Singh',   'amit.v@example.com',     '2026-03-05'),
('Zoya',     'Akhtar',  'zoya.a@example.com',     '2026-03-10'),
('David',    'Warner',  'david.w@example.com',    '2026-03-15'),
('Ishaan',   'Kapur',   'ishaan.k@example.com',   '2026-03-20'),
('Aaliya',   'Akhtar',  'aaliya@example.com',     '2026-04-01'),
('Eesaa',    'Dar',     'eesa@example.com',       '2026-03-15'),
('Ishaan',   'Sharma',  'ishaan@example.com',     '2026-03-20'),
 
-- New records (14–50)
('Rahul',    'Verma',   'rahul.v@example.com',    '2026-01-05'),
('Neha',     'Gupta',   'neha.g@example.com',     '2026-01-08'),
('Omar',     'Sheikh',  'omar.s@example.com',     '2026-01-11'),
('Fatima',   'Hussain', 'fatima.h@example.com',   '2026-01-18'),
('Karan',    'Mehta',   'karan.m@example.com',    '2026-01-25'),
('Ananya',   'Nair',    'ananya.n@example.com',   '2026-02-01'),
('Bilal',    'Ahmed',   'bilal.a@example.com',    '2026-02-03'),
('Sneha',    'Joshi',   'sneha.j@example.com',    '2026-02-07'),
('Rohan',    'Kapoor',  'rohan.k@example.com',    '2026-02-09'),
('Layla',    'Ibrahim', 'layla.i@example.com',    '2026-02-14'),
('Vikram',   'Rao',     'vikram.r@example.com',   '2026-02-18'),
('Disha',    'Tiwari',  'disha.t@example.com',    '2026-02-22'),
('Hamza',    'Qureshi', 'hamza.q@example.com',    '2026-02-25'),
('Pooja',    'Iyer',    'pooja.i@example.com',    '2026-02-28'),
('Nikhil',   'Bose',    'nikhil.b@example.com',   '2026-03-03'),
('Aisha',    'Mirza',   'aisha.m@example.com',    '2026-03-07'),
('Suresh',   'Pillai',  'suresh.p@example.com',   '2026-03-09'),
('Meera',    'Reddy',   'meera.r@example.com',    '2026-03-12'),
('Faisal',   'Ansari',  'faisal.a@example.com',   '2026-03-17'),
('Kavya',    'Menon',   'kavya.m@example.com',    '2026-03-21'),
('Yusuf',    'Khan',    'yusuf.k@example.com',    '2026-03-24'),
('Ritika',   'Saxena',  'ritika.s@example.com',   '2026-03-27'),
('Tanvir',   'Malik',   'tanvir.m@example.com',   '2026-03-30'),
('Simran',   'Kohli',   'simran.k@example.com',   '2026-04-02'),
('Aditya',   'Pandey',  'aditya.p@example.com',   '2026-04-04'),
('Nadia',    'Hassan',  'nadia.h@example.com',    '2026-04-06'),
('Varun',    'Mishra',  'varun.mi@example.com',   '2026-04-08'),
('Zara',     'Siddiqui','zara.s@example.com',     '2026-04-09'),
('Deepak',   'Chauhan', 'deepak.c@example.com',   '2026-04-10'),
('Hina',     'Farooqi', 'hina.f@example.com',     '2026-04-11'),
('Kabir',    'Das',     'kabir.d@example.com',    '2026-04-12'),
('John',     'Siddiqui','zara.s@example.com',     '2026-04-09'),
('Jonny',   'Chauhan', 'deepak.c@example.com',   '2026-04-10'),
('Heera',     'Farooqi', 'hina.f@example.com',     '2026-04-11'),
('Shadow',    'Das',     'kabir.d@example.com',    '2026-04-12'),
('Kaliyaan',     'Shah',    'riya.sh@example.com',    '2026-04-13');




INSERT INTO orders (customer_id, order_date, total_amount) VALUES
-- Original records
(1,  '2026-01-16',  1500.00),
(1,  '2026-02-20',  2500.50),
(2,  '2026-01-22',   450.00),
(3,  '2026-02-06',   120.75),
(3,  '2026-02-15',   300.00),
(3,  '2026-03-05',   850.00),
(4,  '2026-02-11',  2100.00),
(6,  '2026-03-02',    50.00),
(7,  '2026-03-06',   999.99),
(7,  '2026-03-15',  1200.00),
(1,  '2026-04-10',   500.00),
(2,  '2026-04-12',   150.00),
(8,  '2026-03-12',  3000.00),
(8,  '2026-04-01',   450.25),
(4,  '2026-04-15',   125.00),
 
-- New records
(14, '2026-01-06',   600.00),
(15, '2026-01-09',  1200.00),
(16, '2026-01-12',    90.00),
(17, '2026-01-19',   450.00),
(18, '2026-01-26',   999.00),
(14, '2026-02-02',   200.00),
(19, '2026-02-04',   350.00),
(20, '2026-02-08',  2500.00),
(21, '2026-02-10',   110.00),
(22, '2026-02-15',   150.00),
(15, '2026-02-19',    65.00),
(23, '2026-02-23',   850.00),
(24, '2026-03-01',   120.00),
(25, '2026-03-04',  1100.00),
(26, '2026-03-08',    25.00),
(27, '2026-03-10',   600.00),
(28, '2026-03-13',  2200.00),
(29, '2026-03-18',    80.00),
(30, '2026-03-22',   400.00),
(16, '2026-03-25',   500.00),
(31, '2026-03-28',   250.00),
(32, '2026-04-01',   350.00),
(33, '2026-04-03',  1500.00),
(34, '2026-04-05',    35.00),
(35, '2026-04-07',   200.00),
(17, '2026-04-08',    90.00),
(36, '2026-04-09',  1100.00),
(37, '2026-04-10',   600.00),
(38, '2026-04-11',    20.00),
(39, '2026-04-12',  2500.00),
(18, '2026-04-13',   999.00),
(40, '2026-04-13',   150.00),
(41, '2026-04-14',   120.00),
(42, '2026-04-14',  1200.00),
(43, '2026-04-14',    65.00),
(44, '2026-04-15',   850.00),
(45, '2026-04-15',   110.00),
(19, '2026-04-15',   450.00),
(46, '2026-04-16',  2200.00),
(47, '2026-04-16',    25.00),
(20, '2026-04-16',   350.00),
(48, '2026-04-17',  1500.00),
(49, '2026-04-17',   200.00),
(50, '2026-04-17',    80.00),
(21, '2026-04-18',   600.00),
(22, '2026-04-18',  1100.00),
(14, '2026-04-19',   999.00),
(15, '2026-04-19',   500.00);



INSERT INTO products (product_name, category_id, price) VALUES
-- Original records (fixed)
('Pro Laptop',           1,  1200.00),
('Budget Laptop',        1,   600.00),
('Gaming PC',            1,  2500.00),
('Wireless Mouse',       2,    25.00),
('Mechanical Keyboard',  2,   120.00),
('Webcam 4K',            2,   150.00),
('Smartphone X',         3,   999.00),
('Smartphone SE',        3,   450.00),
('Redmi Note 9',         4,   200.00),
('Lenovo Laptop S14',    5,   500.00),
('HP Laptop',            5,   400.00),
 
 
 
 
-- New records (12–30)
('iPad Pro 12.9"',       6,  1100.00),
('Samsung Tab S9',       6,   850.00),
('Kindle Paperwhite',    6,   150.00),
('Dell 27" Monitor',     7,   350.00),
('LG UltraWide 34"',     7,   600.00),
('Samsung 24" FHD',      7,   200.00),
('Sony WH-1000XM5',      8,   350.00),
('JBL Flip 6',           8,    90.00),
('boAt Airdopes 141',    8,    25.00),
('AirPods Pro 2',        8,   250.00),
('SSD 1TB Samsung',      9,   110.00),
('WD 2TB HDD',           9,    65.00),
('SanDisk 256GB USB',    9,    20.00),
('TP-Link WiFi 6 Router',10,   120.00),
('Netgear Nighthawk',    10,  200.00),
('Raspberry Pi 5',       2,    80.00),
('USB-C Hub 7-in-1',     2,    35.00),
('Logitech MX Master 3', 2,    90.00),
('Asus ROG Laptop',      1,  2200.00),
('Acer Laptop',      1,  2200.00),
('MacBook Air M3',       1,  1500.00);
 



