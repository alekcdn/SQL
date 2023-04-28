USE lesson4;
-- Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов.
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

delimiter //
DROP FUNCTION second_to_ddhhmmss;
CREATE FUNCTION second_to_ddhhmmss(sec INT)
RETURNS char(45)
DETERMINISTIC
BEGIN
	DECLARE d char(3);
	DECLARE h, m, s char(2);
	DECLARE result char(50);
	SET d = cast(floor(sec/60/60/24) as char(3));
	SET h = cast(floor(mod(sec/60/60/24,1)*24) as char(2));
	SET m = cast(floor(mod(mod(sec/60/60/24,1)*24,1)*60) as char(2));
	SET s = cast(round(mod(mod(mod(sec/60/60/24,1)*24,1)*60,1)*60) as char(2));
  SET result = concat(d,' day(s) ',h,' hour(s) ',m,' minute(s) ',s,' second(s) ');
RETURN result;
END //
delimiter ;
SElECT second_to_ddhhmmss(123456);

-- Выведите только четные числа от 1 до 10.
-- Пример: 2,4,6,8,10

delimiter //
DROP FUNCTION even_numbers;
CREATE FUNCTION even_numbers(num INT)
RETURNS VARCHAR(40)
DETERMINISTIC
BEGIN
	DECLARE i INT DEFAULT 0;
	DECLARE result VARCHAR(40);
	SET result='';
	WHILE i < num DO
		SET i = i + 2;
		SET result = concat(result, ' ', i);
	END while;
RETURN result;
END //
delimiter ;

SELECT even_numbers(10);