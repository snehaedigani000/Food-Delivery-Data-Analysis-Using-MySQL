CREATE TABLE order_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    action_type VARCHAR(50),
    action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DELIMITER //

CREATE TRIGGER after_order_insert
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    INSERT INTO order_log(order_id, action_type)
    VALUES(NEW.order_id, 'New Order Created');
END //

DELIMITER ;
SELECT * FROM order_log;
