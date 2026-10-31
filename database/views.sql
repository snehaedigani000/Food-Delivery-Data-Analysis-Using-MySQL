CREATE VIEW customer_order_details AS
SELECT c.customer_name,
       o.order_id,
       o.order_date,
       o.order_amount,
       o.order_status
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

CREATE VIEW restaurant_revenue AS
SELECT r.restaurant_name,
       SUM(o.order_amount) AS total_revenue
FROM restaurants r
JOIN orders o
ON r.restaurant_id = o.restaurant_id
WHERE o.order_status = 'Delivered'
GROUP BY r.restaurant_name;

SELECT * FROM customer_order_details;
SELECT * FROM restaurant_revenue;

SELECT COUNT(*) AS total_orders
FROM orders;

SELECT SUM(order_amount) AS total_revenue
FROM orders
WHERE order_status = 'Delivered';

SELECT c.customer_name,
       COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_status = 'Delivered'
GROUP BY c.customer_name
ORDER BY total_orders DESC;

SELECT food_name,
       SUM(quantity) AS total_quantity
FROM order_items oi
JOIN orders o
ON oi.order_id = o.order_id
WHERE o.order_status = 'Delivered'
GROUP BY food_name
ORDER BY total_quantity DESC;
