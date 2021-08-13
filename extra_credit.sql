-- ARTIST
-- 1
SELECT * 
FROM artist
ORDER BY name DESC
LIMIT 10;

-- 2
SELECT *
FROM artist
WHERE name LIKE 'Black%';

-- 3
SELECT *
FROM artist
WHERE name LIKE '%Black%';

-- EMPLOYEE
-- 1
SELECT MIN(birth_date)
FROM employee;

-- 2
SELECT Max(birth_date)
FROM employee;

-- INVOICE
-- 1
SELECT COUNT(*)
FROM invoice_line
WHERE invoice_id IN (
    SELECT invoice_id
    FROM invoice
    WHERE billing_state = 'CA' OR billing_state = 'TX' OR billing_state = 'AZ'
);

-- 2
SELECT AVG(total)
FROM invoice;

-- MORE JOIN QUERIES
-- 1
SELECT pt.track_id
FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

-- 2
SELECT t.name
FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5;

-- 3
SELECT t.name, p.name
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_ID
JOIN playlist p ON p.playlist_id = pt.playlist_id;

-- 4
SELECT t.name, al.title
FROM track t
JOIN album al ON t.album_id = al.album_id
JOIN genre g ON t.genre_id = g.genre_id
WHERE g.name = 'Alternative & Punk';
