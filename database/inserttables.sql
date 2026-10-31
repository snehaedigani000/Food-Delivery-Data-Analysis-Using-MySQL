
INSERT INTO customers VALUES
(9, 'Arjun', 'Hyderabad', '2025-06-01'),
(10, 'Divya', 'Warangal', '2025-06-05'),
(11, 'Rohit', 'Secunderabad', '2025-06-10'),
(12, 'Kavya', 'Hyderabad', '2025-06-15'),
(13, 'Manoj', 'Karimnagar', '2025-06-20'),
(14, 'Pooja', 'Warangal', '2025-06-25');

INSERT INTO restaurants VALUES
(106, 'Food Palace', 'Hyderabad', 'Chinese'),
(107, 'Tasty Treat', 'Warangal', 'Indian'),
(108, 'Fresh Kitchen', 'Secunderabad', 'Healthy'),
(109, 'Royal Biryani', 'Hyderabad', 'Indian'),
(110, 'Cafe Delight', 'Karimnagar', 'Fast Food');

INSERT INTO orders VALUES
(1017, 9, 106, '2025-08-01', 32, 550.00, 30.00, 'Delivered'),
(1018, 10, 107, '2025-08-02', 45, 420.00, 35.00, 'Delivered'),
(1019, 11, 108, '2025-08-03', 55, 650.00, 25.00, 'Cancelled'),
(1020, 12, 109, '2025-08-04', 28, 800.00, 30.00, 'Delivered'),
(1021, 13, 110, '2025-08-05', 38, 350.00, 20.00, 'Delivered'),
(1022, 14, 106, '2025-08-06', 60, 700.00, 30.00, 'Delivered'),
(1023, 9, 109, '2025-08-07', 25, 950.00, 35.00, 'Delivered'),
(1024, 10, 107, '2025-08-08', 50, 480.00, 35.00, 'Cancelled'),
(1025, 11, 108, '2025-08-09', 35, 600.00, 25.00, 'Delivered'),
(1026, 12, 110, '2025-08-10', 42, 390.00, 20.00, 'Delivered');
4. Insert values into Order_Items
INSERT INTO order_items VALUES
(17, 1017, 'Noodles', 2, 275.00),
(18, 1018, 'Veg Meals', 2, 210.00),
(19, 1019, 'Salad Bowl', 2, 325.00),
(20, 1020, 'Chicken Biryani', 2, 400.00),
(21, 1021, 'Sandwich', 2, 175.00),
(22, 1022, 'Fried Rice', 2, 350.00),
(23, 1023, 'Special Biryani', 2, 475.00),
(24, 1024, 'Veg Meals', 2, 240.00),
(25, 1025, 'Healthy Bowl', 2, 300.00),
(26, 1026, 'Burger', 2, 195.00);
SELECT * FROM customers;
SELECT * FROM restaurants;
SELECT * FROM orders;
SELECT * FROM order_items;
