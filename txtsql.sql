SELECT id, date, YEAR(date) AS year, MONTH(date) AS month, DAY(date) AS day
FROM orders;

SELECT id, date, date + INTERVAL 1 DAY AS date_add
FROM orders;

SELECT id, date, UNIX_TIMESTAMP(date)
FROM orders;

SELECT COUNT(*)
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

SELECT id, date, JSON_OBJECT('id', id, 'date', date) AS JSON
FROM orders;