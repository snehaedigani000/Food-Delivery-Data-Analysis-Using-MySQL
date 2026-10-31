CREATE INDEX idx_customer_city
ON customers(city);

CREATE INDEX idx_order_date
ON orders(order_date);
CREATE INDEX idx_order_status
ON orders(order_status);

SHOW INDEX FROM orders;