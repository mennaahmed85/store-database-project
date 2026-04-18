-- =====================
-- Category
-- =====================
INSERT INTO Category VALUES 
(1, 'Electronics'),
(2, 'Clothes'),
(3, 'Home');

-- =====================
-- Product
-- =====================
INSERT INTO Product VALUES
(1, 1, 'Laptop', 'Gaming laptop', 15000, 5),
(2, 1, 'Phone', 'Smartphone', 8000, 10),
(3, 2, 'T-shirt', 'Cotton t-shirt', 200, 50),
(4, 3, 'Blender', 'Kitchen blender', 1200, 7);

-- =====================
-- Customer
-- =====================
INSERT INTO Customer VALUES
(1, 'Mena', 'Ahmed', 'mena@gmail.com', '123'),
(2, 'Sara', 'Ali', 'sara@gmail.com', '123'),
(3, 'Omar', 'Hassan', 'omar@gmail.com', '123');

-- =====================
-- Orders
-- =====================
INSERT INTO Orders VALUES
(1, 1, '2026-04-01', 30000),
(2, 2, '2026-04-02', 8200),
(3, 1, '2026-04-03', 200),
(4, 3, '2026-04-01', 1200);

-- =====================
-- Order_details
-- =====================
INSERT INTO Order_details VALUES
(1, 1, 1, 2, 15000), 
(2, 2, 2, 1, 8000), 
(3, 2, 3, 1, 200),   
(4, 3, 3, 1, 200),   
(5, 4, 4, 1, 1200);  


SELECT * FROM Category;
SELECT * FROM Product;
SELECT * FROM Customer;
SELECT * FROM Orders;
SELECT * FROM Order_details;