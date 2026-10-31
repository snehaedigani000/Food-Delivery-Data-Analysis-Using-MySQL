-- 1. Display all customers
SELECT * FROM customers;

-- 2. Display all restaurants
SELECT * FROM restaurants;

-- 3. Display all orders
SELECT * FROM orders;

-- 4. Display all food items
SELECT * FROM order_items;

-- 5. Find customers from Hyderabad
SELECT *
FROM customers
WHERE city = 'Hyderabad';

-- 6. Find delivered orders
SELECT *
FROM orders
WHERE order_status = 'Delivered';

-- 7. Find orders above 500
SELECT *
FROM orders
WHERE order_amount > 500;

-- 8. Find orders between 300 and 700
SELECT *
FROM orders
WHERE order_amount BETWEEN 300 AND 700;

-- 9. Display customers in alphabetical order
SELECT *
FROM customers
ORDER BY customer_name;

-- 10. Find the top 5 highest orders
SELECT *
FROM orders
ORDER BY order_amount DESC
LIMIT 5;
