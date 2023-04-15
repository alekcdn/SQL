 DROP SCHEMA IF EXISTS homework_2;
 CREATE SCHEMA IF NOT EXISTS homework_2;
 USE homework_2;
 
 DROP TABLE IF EXISTS sales;
 CREATE TABLE IF NOT EXISTS sales
 (
 id INT PRIMARY KEY AUTO_INCREMENT,
 order_date DATE NOT NULL,
 count_product INT 
 );
 
 INSERT INTO sales (order_date, count_product)
VALUES
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

SELECT * FROM sales;

SELECT 
	id AS 'ID Заказа',
	CASE 
		WHEN count_product < 100 THEN 'Маленький заказ'
		WHEN count_product > 300 THEN 'Большой заказ'
        ELSE 'Средний заказ'
	END AS 'Тип заказа'	
FROM sales;

 DROP TABLE IF EXISTS orders;
 CREATE TABLE IF NOT EXISTS orders
 (
 id INT PRIMARY KEY AUTO_INCREMENT,
 employee_id VARCHAR(45),
 amount VARCHAR(30),
 order_status VARCHAR(45) 
 );
 
 INSERT INTO orders (employee_id, amount, order_status)
VALUES
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.75, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED');

SELECT * FROM orders;

SELECT * ,
	CASE 
		WHEN order_status = 'OPEN' THEN 'Order is in open state'
		WHEN order_status = 'CLOSED' THEN 'Order is closed'
        WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
	END AS 'full_order_status'	
FROM orders;