CREATE TABLE users(
	order_id INT PRIMARY KEY,
    user_id INT,
    r_id INT,
    amount INT,
    order_date DATE,
    partner_id INT,
    delivery_time INT,
    delivery_rating INT,
    restaurant_rating INT
);

INSERT INTO users(order_id, user_id, r_id, amount, order_date, partner_id, delivery_time, delivery_rating, restaurant_rating)
VALUES 
(1001, 1, 1, 550, '2022-05-10', 1, 25, 5, 3),
(1011, 3, 1, 450, '2022-05-10', 2, 25, 3, 1),
(1016, 4, 4, 300, '2022-05-15', 3, 31, 5, 5),
(1012, 3, 4, 180, '2022-05-20', 5, 33, 4, 1),
(1002, 1, 2, 415, '2022-05-26', 1, 19, 5, 2),
(1013, 3, 2, 230, '2022-05-30', 4, 45, 3, NULL),
(1017, 4, 4, 300, '2022-05-30', 1, 50, 1, NULL),
(1006, 2, 1, 950, '2022-06-10', 2, 16, 5, NULL);

SELECT order_date, MONTH(order_date) FROM users;
SELECT order_date, MONTH(order_date), MONTHNAME(order_date) FROM users;