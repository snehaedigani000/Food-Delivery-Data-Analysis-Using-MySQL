START TRANSACTION;

UPDATE orders
SET order_amount = 750
WHERE order_id = 1001;

COMMIT;
SELECT * FROM orders
WHERE order_id = 1001;
START TRANSACTION;

UPDATE orders
SET order_amount = 900
WHERE order_id = 1002;

ROLLBACK;
SELECT * FROM orders
WHERE order_id = 1002;
START TRANSACTION;

UPDATE orders
SET order_amount = 800
WHERE order_id = 1001;

SAVEPOINT sp1;

UPDATE orders
SET order_amount = 1000
WHERE order_id = 1002;

ROLLBACK TO sp1;

COMMIT;