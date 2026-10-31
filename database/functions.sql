DELIMITER //

CREATE FUNCTION calculate_total(amount DECIMAL(10,2), fee DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN amount + fee;
END //

DELIMITER ;
SELECT order_id,
       calculate_total(order_amount, delivery_fee) AS total_amount
FROM orders;
DELIMITER //

CREATE FUNCTION delivery_category(minutes INT)
RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
    RETURN CASE
        WHEN minutes <= 30 THEN 'Fast'
        WHEN minutes <= 45 THEN 'Moderate'
        ELSE 'Delayed'
    END;
END //

DELIMITER ;
SELECT order_id,
       delivery_category(delivery_time) AS category
FROM orders;