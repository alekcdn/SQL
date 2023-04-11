CREATE DATABASE homework_1;
USE homework_1;
CREATE TABLE mobile_phone
(
idmobile_phone INT PRIMARY KEY NOT NULL,
ProductName VARCHAR(30) NOT NULL,
Manufacturer VARCHAR(40) NOT NULL,
ProductCount VARCHAR(10),
Price VARCHAR(10)
);

INSERT mobile_phone
(
idmobile_phone, ProductName, Manufacturer, ProductCount, Price
)
VALUES 
(1, "IPhone X", "Adobe", "3", "76000"),
(2, "IPhone 8", "Adobe", "2", "51000"),
(3, "Galaxy S9", "Samsung", "2", "56000"),
(4, "Galaxy S8", "Samsung", "1", "41000"),
(5, "P20 Pro", "Huawei", "5", "36000");

SELECT ProductName, Manufacturer, Price  FROM mobile_phone
WHERE ProductCount > "2";

SELECT * FROM mobile_phone
WHERE Manufacturer = "Samsung";