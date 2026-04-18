
-- ============================
-- * Write an SQL query to generate a daily report of the total revenue for a specific date.
-- =============================

SELECT SUM(total_amount) as "total revenue per day"
FROM Orders
WHERE order_date = '2026-04-01';

-- ============================
-- * Write an SQL query to generate a monthly report of the top-selling products in a given month.
-- ============================

SELECT SUM(quantity) as " top-selling per month" , Product.name
FROM Orders JOIN Order_details
ON Orders.order_id = Order_details.order_id JOIN Product
ON Product.product_id  = Order_details.product_id 
WHERE MONTH(order_date) = 4
GROUP BY Product.name
ORDER BY  SUM(quantity) DESC

-- =============================
   /* 
   Write a SQL query to retrieve a list of customers who have placed orders totaling more than $500 in the 
   past month. Include customer names and their total order amounts. [Complex query].
   */
-- ==============================

SELECT Customer.first_name , Customer.last_name , SUM(total_amount) AS "total_spent" ,Customer.customer_id
FROM Customer JOIN Orders
ON  Customer.customer_id = Orders.customer_id 
WHERE order_date >= DATEADD(day, -30, GETDATE())
GROUP BY first_name , last_name , Customer.customer_id
HAVING SUM(total_amount) > 500

-- =================================
-- * How we can apply a denormalization mechanism on customer and order entities.
-- ==================================

/*
Denormalization can be applied by storing frequently used customer data, such as first name and last name, directly in the Orders table to reduce the need for joins.

Additionally, aggregated data such as the total amount spent by a customer can be stored in the Customer table to improve performance and avoid repeated calculations using SUM functions.

However, this data is not updated automatically and must be maintained manually, for example by updating it whenever new orders are added, to ensure data consistency.
*/