DELIMITER //

CREATE PROCEDURE get_all_orders()
BEGIN
    SELECT * FROM orders;
END //

DELIMITER ;
CALL get_all_orders();
DELIMITER //

CREATE PROCEDURE get_orders_by_status(IN status_name VARCHAR(20))
BEGIN
    SELECT *
    FROM orders
    WHERE order_status = status_name;
END //

DELIMITER ;

CALL get_orders_by_status('Delivered');
