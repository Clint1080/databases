-- ARTIST
-- 1
INSERT INTO artist (name)
VALUES ('clint'), ('Santa Claus'), ('mr. Hanky');

-- 2
SELECT *
FROM artist
LIMIT 5;

-- EMPLOYEE
-- 1
SELECT e.first_name, e.last_name
FROM employee e
WHERE city = 'Calgary';

-- 2
SELECT *
FROM employee
WHERE reports_to IN (
    SELECT employee_id
    FROM employee
    WHERE first_name = 'Nancy' AND last_name = 'Edwards'
);

-- 3
SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge'

-- INVOICE 
-- 1
SELECT COUNT(*)
FROM invoice 
WHERE billing_country = 'USA';

-- 2
SELECT MAX(total) 
FROM invoice;

-- 3
SELECT MIN(total)
FROM invoice;

-- 4
SELECT *
FROM invoice
WHERE total > 5;

-- 5
SELECT COUNT(*)
FROM invoice
WHERE total < 5;

-- 6
SELECT SUM(total)
FROM invoice;

-- JOIN QUERIES
-- 1
SELECT *
FROM invoice
WHERE invoice_id IN (
    SELECT invoice_id
    FROM invoice_line
    WHERE unit_price > .99
);

--2
SELECT i.invoice_date, i.total, c.first_name, c.last_name
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

-- 3
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

-- 4
SELECT al.title, ar.name 
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;