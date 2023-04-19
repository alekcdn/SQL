SELECT * FROM lesson3.activity_staff;

-- 1. Выведите id сотрудников, которые напечатали более 500 страниц за всех дни
SELECT staff_id
FROM lesson3.activity_staff
GROUP BY staff_id
HAVING SUM(count_pages) > 500;

-- 2. Выведите дни, когда работало более 3 сотрудников Также укажите кол-во сотрудников, которые работали в выбранные дни.
SELECT date_activity, COUNT(DISTINCT staff_id) AS count_employees
FROM lesson3.activity_staff
GROUP BY date_activity
HAVING COUNT(staff_id) > 3;


SELECT * FROM lesson3.staff;

-- 3. Выведите среднюю заработную плату по должностям, которая составляет более 30000
SELECT post, AVG(salary) AS avg_salary
FROM lesson3.staff
GROUP BY post 
HAVING AVG(salary) > 30000;

-- 4. Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания
SELECT *
FROM lesson3.staff
ORDER BY salary DESC;

SELECT *
FROM lesson3.staff
ORDER BY salary; 

-- 5.Выведите 5 максимальных заработных плат (salary)
SELECT salary
FROM lesson3.staff
LIMIT 5;

-- 6.Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
SELECT post, SUM(salary) AS sum_salary_post
FROM lesson3.staff
GROUP BY post;

-- 7.Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.
SELECT post, COUNT(*) AS post_count_age
FROM lesson3.staff
WHERE age BETWEEN 24 AND 29 AND post = "Рабочий";

-- 8. Найдите количество специальностей
SELECT COUNT(DISTINCT post) AS count_post
FROM lesson3.staff;

-- 9. Выведите специальности, у которых средний возраст сотрудников меньше 30 лет
SELECT post
FROM lesson3.staff
GROUP BY post 
HAVING AVG(age) < 30;
-- По таблице "staff" 3 семинар*/