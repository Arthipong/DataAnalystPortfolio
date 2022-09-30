--- 29-09-2022 11:16:23
--- chinook.db
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; 

--- 29-09-2022 11:49:51
--- chinook.db
SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA';

--- 29-09-2022 11:54:10
--- chinook.db
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;

--- 29-09-2022 11:55:45
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

/*SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks;

--- 29-09-2022 11:59:03
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- 
SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com');

--- 29-09-2022 12:00:24
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- Using AND & OR 
/* SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com'); */

SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Belgium');

--- 29-09-2022 12:50:16
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- Using AND & OR 
/* SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com'); */

-- using IN operator instead OR
/* SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Belgium');*/

-- using BETWEEN.. AND.. operator
/* SELECT * FROM invoices
WHERE total BETWEEN 10 AND 20;

SELECT * FROM invoices
WHERE invoicedate BETWEEN '2010-01-01 00:00:00' AND '2010-01-31
23:59:59';

SELECT * FROM invoices
WHERE STRFTIME('%Y-%m', invoicedate) = '2010-01';

SELECT invoicedate, billingcountry FROM invoices
WHERE billingcountry BETWEEN 'Australia' AND 'Canada'; */

-- find NULL (missing value)
/* SELECT firstname, lastname, company
FROM customers
WHERE company IS NULL; */

-- not find NULL (missing value)
/* SELECT * FROM customers
WHERE company IS NOT NULL; */

-- not and logical operators
/* SELECT * FROM customers
WHERE NOT customerid >= 5; */
-- not and in
/* SELECT * FROM customers
WHERE country NOT IN ('USA', 'France', 'Belgium'); */
-- not and between
/* SELECT * FROM invoices
WHERE invoicedate NOT BETWEEN '2010-01-01' AND '2010-01-31'; */

-- LIKE & wildcards(% , _)  % ใช้match ตัวอักษรหรือตัวเลข >= 1 character 
-- _ ใช้match ตัวอักษรหรือตัวเลขเพียง 1 character
/* SELECT * FROM customers
WHERE firstname LIKE 'L%';

SELECT * FROM customers
WHERE email LIKE '%gmail.com';

SELECT * FROM customers
WHERE firstname LIKE 'J_hn'; 

SELECT firstname, lastname, phone
FROM customers
WHERE phone LIKE '%555%'; */

-- Regular Expressions
/* SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'h';  -- find h in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^L';  -- find L of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^(L|A)'; -- find L or A of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'a$';  -- find a of last word in firstname

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '\d'; -- find number min 1 number

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '^[0-9]{5}$'; */ -- find number 0-9 of 5 position

-- Aggregate Functions
/* SELECT
AVG(bytes) AS avg_bytes,
SUM(bytes) AS sum_bytes,
MIN(bytes) AS min_bytes,
MAX(bytes) AS max_bytes,
COUNT(bytes) AS count_bytes
FROM tracks; */

-- COUNT 
SELECT COUNT(*) FROM customers;

--- 29-09-2022 13:25:02
--- chinook.db
SELECT COUNT(DISTINCT country)  -- using DISTINCT not same data
FROM customers;

--- 29-09-2022 13:25:12
--- chinook.db
SELECT
COUNT(*),
COUNT(company)
FROM customers;

--- 29-09-2022 13:25:21
--- chinook.db
SELECT
AVG(bytes) AS avg_bytes,
SUM(bytes) AS sum_bytes,
MIN(bytes) AS min_bytes,
MAX(bytes) AS max_bytes,
COUNT(bytes) AS count_bytes
FROM tracks;

--- 29-09-2022 13:40:45
--- chinook.db
SELECT
firstname,
UPPER(firstname) AS upperName,
LOWER(firstname) AS lowerName,
SUBSTR(firstname, 1, 3) AS shortName
FROM customers;

--- 29-09-2022 13:55:32
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- Using AND & OR 
/* SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com'); */

-- using IN operator instead OR
/* SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Belgium');*/

-- using BETWEEN.. AND.. operator
/* SELECT * FROM invoices
WHERE total BETWEEN 10 AND 20;

SELECT * FROM invoices
WHERE invoicedate BETWEEN '2010-01-01 00:00:00' AND '2010-01-31
23:59:59';

SELECT * FROM invoices
WHERE STRFTIME('%Y-%m', invoicedate) = '2010-01';

SELECT invoicedate, billingcountry FROM invoices
WHERE billingcountry BETWEEN 'Australia' AND 'Canada'; */

-- find NULL (missing value)
/* SELECT firstname, lastname, company
FROM customers
WHERE company IS NULL; */

-- not find NULL (missing value)
/* SELECT * FROM customers
WHERE company IS NOT NULL; */

-- not and logical operators
/* SELECT * FROM customers
WHERE NOT customerid >= 5; */
-- not and in
/* SELECT * FROM customers
WHERE country NOT IN ('USA', 'France', 'Belgium'); */
-- not and between
/* SELECT * FROM invoices
WHERE invoicedate NOT BETWEEN '2010-01-01' AND '2010-01-31'; */

-- LIKE & wildcards(% , _)  % ใช้match ตัวอักษรหรือตัวเลข >= 1 character 
-- _ ใช้match ตัวอักษรหรือตัวเลขเพียง 1 character
/* SELECT * FROM customers
WHERE firstname LIKE 'L%';

SELECT * FROM customers
WHERE email LIKE '%gmail.com';

SELECT * FROM customers
WHERE firstname LIKE 'J_hn'; 

SELECT firstname, lastname, phone
FROM customers
WHERE phone LIKE '%555%'; */

-- Regular Expressions
/* SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'h';  -- find h in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^L';  -- find L of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^(L|A)'; -- find L or A of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'a$';  -- find a of last word in firstname

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '\d'; -- find number min 1 number

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '^[0-9]{5}$'; */ -- find number 0-9 of 5 position

-- Aggregate Functions
/* SELECT
AVG(bytes) AS avg_bytes,
SUM(bytes) AS sum_bytes,
MIN(bytes) AS min_bytes,
MAX(bytes) AS max_bytes,
COUNT(bytes) AS count_bytes
FROM tracks; */

-- COUNT of the row/record 
/* SELECT
COUNT(*),
COUNT(company)
FROM customers;

SELECT COUNT(DISTINCT country)  -- using DISTINCT not same data
FROM customers; */ 

-- adjust format
/* SELECT
firstname,
UPPER(firstname) AS upperName,
LOWER(firstname) AS lowerName,
SUBSTR(firstname, 1, 3) AS shortName -- SUBSTR() pull characters
FROM customers; */

-- ROUND adjust decimal
/* SELECT
AVG(bytes),
ROUND(AVG(bytes), 2) AS roundMeanByte
FROM tracks; */

-- adjust NULL by COALESCE() 
/* SELECT
company,
COALESCE(company, 'End Customer') AS cleanCompany -- End Customer insted NULL
FROM customers; */

-- date&time
/* SELECT DATE('now');

SELECT
invoicedate,
STRFTIME('%Y', invoicedate) AS year,
STRFTIME('%m', invoicedate) AS month,
STRFTIME('%d', invoicedate) AS day
FROM invoices; */


SELECT
country,
state,
COUNT(*) AS n
FROM customers
GROUP BY country, state;

--- 29-09-2022 13:56:45
--- chinook.db
SELECT
B.genreid,
B.name,
COUNT(A.name) AS count_n,
AVG(A.bytes/ (1024.0 * 1024.0)) AS avg_megabytes,
SUM(A.milliseconds/ 60000.0) AS total_minutes
FROM tracks AS A
JOIN genres AS B ON A.genreid = B.genreid
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10;

--- 29-09-2022 14:47:12
--- chinook.db
/***** ERROR ******
no such table: t1
 ----- 
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- Using AND & OR 
/* SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com'); */

-- using IN operator instead OR
/* SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Belgium');*/

-- using BETWEEN.. AND.. operator
/* SELECT * FROM invoices
WHERE total BETWEEN 10 AND 20;

SELECT * FROM invoices
WHERE invoicedate BETWEEN '2010-01-01 00:00:00' AND '2010-01-31
23:59:59';

SELECT * FROM invoices
WHERE STRFTIME('%Y-%m', invoicedate) = '2010-01';

SELECT invoicedate, billingcountry FROM invoices
WHERE billingcountry BETWEEN 'Australia' AND 'Canada'; */

-- find NULL (missing value)
/* SELECT firstname, lastname, company
FROM customers
WHERE company IS NULL; */

-- not find NULL (missing value)
/* SELECT * FROM customers
WHERE company IS NOT NULL; */

-- not and logical operators
/* SELECT * FROM customers
WHERE NOT customerid >= 5; */
-- not and in
/* SELECT * FROM customers
WHERE country NOT IN ('USA', 'France', 'Belgium'); */
-- not and between
/* SELECT * FROM invoices
WHERE invoicedate NOT BETWEEN '2010-01-01' AND '2010-01-31'; */

-- LIKE & wildcards(% , _)  % ใช้match ตัวอักษรหรือตัวเลข >= 1 character 
-- _ ใช้match ตัวอักษรหรือตัวเลขเพียง 1 character
/* SELECT * FROM customers
WHERE firstname LIKE 'L%';

SELECT * FROM customers
WHERE email LIKE '%gmail.com';

SELECT * FROM customers
WHERE firstname LIKE 'J_hn'; 

SELECT firstname, lastname, phone
FROM customers
WHERE phone LIKE '%555%'; */

-- Regular Expressions
/* SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'h';  -- find h in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^L';  -- find L of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^(L|A)'; -- find L or A of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'a$';  -- find a of last word in firstname

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '\d'; -- find number min 1 number

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '^[0-9]{5}$'; */ -- find number 0-9 of 5 position

-- Aggregate Functions
/* SELECT
AVG(bytes) AS avg_bytes,
SUM(bytes) AS sum_bytes,
MIN(bytes) AS min_bytes,
MAX(bytes) AS max_bytes,
COUNT(bytes) AS count_bytes
FROM tracks; */

-- COUNT of the row/record 
/* SELECT
COUNT(*),
COUNT(company)
FROM customers;

SELECT COUNT(DISTINCT country)  -- using DISTINCT not same data
FROM customers; */ 

-- adjust format
/* SELECT
firstname,
UPPER(firstname) AS upperName,
LOWER(firstname) AS lowerName,
SUBSTR(firstname, 1, 3) AS shortName -- SUBSTR() pull characters
FROM customers; */

-- ROUND adjust decimal
/* SELECT
AVG(bytes),
ROUND(AVG(bytes), 2) AS roundMeanByte
FROM tracks; */

-- adjust NULL by COALESCE() 
/* SELECT
company,
COALESCE(company, 'End Customer') AS cleanCompany -- End Customer insted NULL
FROM customers; */

-- date&time
/* SELECT DATE('now');

SELECT
invoicedate,
STRFTIME('%Y', invoicedate) AS year,
STRFTIME('%m', invoicedate) AS month,
STRFTIME('%d', invoicedate) AS day
FROM invoices; */

-- GROUP BY + Aggregate Functions
/* SELECT
country,
state,
COUNT(*) AS n
FROM customers
GROUP BY country, state;

SELECT
B.genreid,
B.name,
COUNT(A.name) AS count_n,
AVG(A.bytes/ (1024.0 * 1024.0)) AS avg_megabytes,
SUM(A.milliseconds/ 60000.0) AS total_minutes
FROM tracks AS A
JOIN genres AS B ON A.genreid = B.genreid
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10; */

-- HAVING
/* SELECT
country,
COUNT(*) AS n
FROM customers
GROUP BY country
HAVING n >= 5; */

-- ORDER BY sorting data
/* SELECT
firstname,
country
FROM customers
ORDER BY firstname;

SELECT
firstname,
country
FROM customers
ORDER BY firstname DESC;

SELECT
firstname,
country
FROM customers
ORDER BY country, firstname;

SELECT
firstname,
country
FROM customers
ORDER BY 2, 1;

SELECT
firstname,
country
FROM customers
ORDER BY 2 DESC, 1 DESC; */


-- JOIN (syntax)
SELECT
t1.column,
t2.column
FROM t1 JOIN t2 ON t1.PK = t2.FK; -- join syntax;
*****/

--- 29-09-2022 14:47:56
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- Using AND & OR 
/* SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com'); */

-- using IN operator instead OR
/* SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Belgium');*/

-- using BETWEEN.. AND.. operator
/* SELECT * FROM invoices
WHERE total BETWEEN 10 AND 20;

SELECT * FROM invoices
WHERE invoicedate BETWEEN '2010-01-01 00:00:00' AND '2010-01-31
23:59:59';

SELECT * FROM invoices
WHERE STRFTIME('%Y-%m', invoicedate) = '2010-01';

SELECT invoicedate, billingcountry FROM invoices
WHERE billingcountry BETWEEN 'Australia' AND 'Canada'; */

-- find NULL (missing value)
/* SELECT firstname, lastname, company
FROM customers
WHERE company IS NULL; */

-- not find NULL (missing value)
/* SELECT * FROM customers
WHERE company IS NOT NULL; */

-- not and logical operators
/* SELECT * FROM customers
WHERE NOT customerid >= 5; */
-- not and in
/* SELECT * FROM customers
WHERE country NOT IN ('USA', 'France', 'Belgium'); */
-- not and between
/* SELECT * FROM invoices
WHERE invoicedate NOT BETWEEN '2010-01-01' AND '2010-01-31'; */

-- LIKE & wildcards(% , _)  % ใช้match ตัวอักษรหรือตัวเลข >= 1 character 
-- _ ใช้match ตัวอักษรหรือตัวเลขเพียง 1 character
/* SELECT * FROM customers
WHERE firstname LIKE 'L%';

SELECT * FROM customers
WHERE email LIKE '%gmail.com';

SELECT * FROM customers
WHERE firstname LIKE 'J_hn'; 

SELECT firstname, lastname, phone
FROM customers
WHERE phone LIKE '%555%'; */

-- Regular Expressions
/* SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'h';  -- find h in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^L';  -- find L of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^(L|A)'; -- find L or A of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'a$';  -- find a of last word in firstname

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '\d'; -- find number min 1 number

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '^[0-9]{5}$'; */ -- find number 0-9 of 5 position

-- Aggregate Functions
/* SELECT
AVG(bytes) AS avg_bytes,
SUM(bytes) AS sum_bytes,
MIN(bytes) AS min_bytes,
MAX(bytes) AS max_bytes,
COUNT(bytes) AS count_bytes
FROM tracks; */

-- COUNT of the row/record 
/* SELECT
COUNT(*),
COUNT(company)
FROM customers;

SELECT COUNT(DISTINCT country)  -- using DISTINCT not same data
FROM customers; */ 

-- adjust format
/* SELECT
firstname,
UPPER(firstname) AS upperName,
LOWER(firstname) AS lowerName,
SUBSTR(firstname, 1, 3) AS shortName -- SUBSTR() pull characters
FROM customers; */

-- ROUND adjust decimal
/* SELECT
AVG(bytes),
ROUND(AVG(bytes), 2) AS roundMeanByte
FROM tracks; */

-- adjust NULL by COALESCE() 
/* SELECT
company,
COALESCE(company, 'End Customer') AS cleanCompany -- End Customer insted NULL
FROM customers; */

-- date&time
/* SELECT DATE('now');

SELECT
invoicedate,
STRFTIME('%Y', invoicedate) AS year,
STRFTIME('%m', invoicedate) AS month,
STRFTIME('%d', invoicedate) AS day
FROM invoices; */

-- GROUP BY + Aggregate Functions
/* SELECT
country,
state,
COUNT(*) AS n
FROM customers
GROUP BY country, state;

SELECT
B.genreid,
B.name,
COUNT(A.name) AS count_n,
AVG(A.bytes/ (1024.0 * 1024.0)) AS avg_megabytes,
SUM(A.milliseconds/ 60000.0) AS total_minutes
FROM tracks AS A
JOIN genres AS B ON A.genreid = B.genreid
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10; */

-- HAVING
/* SELECT
country,
COUNT(*) AS n
FROM customers
GROUP BY country
HAVING n >= 5; */

-- ORDER BY sorting data
/* SELECT
firstname,
country
FROM customers
ORDER BY firstname;

SELECT
firstname,
country
FROM customers
ORDER BY firstname DESC;

SELECT
firstname,
country
FROM customers
ORDER BY country, firstname;

SELECT
firstname,
country
FROM customers
ORDER BY 2, 1;

SELECT
firstname,
country
FROM customers
ORDER BY 2 DESC, 1 DESC; */


-- JOIN (syntax)
SELECT
artists.artistid,
artists.name,
albums.title
FROM artists
INNER JOIN albums
ON artists.artistid = albums.artistid;

--- 29-09-2022 14:50:00
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- Using AND & OR 
/* SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com'); */

-- using IN operator instead OR
/* SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Belgium');*/

-- using BETWEEN.. AND.. operator
/* SELECT * FROM invoices
WHERE total BETWEEN 10 AND 20;

SELECT * FROM invoices
WHERE invoicedate BETWEEN '2010-01-01 00:00:00' AND '2010-01-31
23:59:59';

SELECT * FROM invoices
WHERE STRFTIME('%Y-%m', invoicedate) = '2010-01';

SELECT invoicedate, billingcountry FROM invoices
WHERE billingcountry BETWEEN 'Australia' AND 'Canada'; */

-- find NULL (missing value)
/* SELECT firstname, lastname, company
FROM customers
WHERE company IS NULL; */

-- not find NULL (missing value)
/* SELECT * FROM customers
WHERE company IS NOT NULL; */

-- not and logical operators
/* SELECT * FROM customers
WHERE NOT customerid >= 5; */
-- not and in
/* SELECT * FROM customers
WHERE country NOT IN ('USA', 'France', 'Belgium'); */
-- not and between
/* SELECT * FROM invoices
WHERE invoicedate NOT BETWEEN '2010-01-01' AND '2010-01-31'; */

-- LIKE & wildcards(% , _)  % ใช้match ตัวอักษรหรือตัวเลข >= 1 character 
-- _ ใช้match ตัวอักษรหรือตัวเลขเพียง 1 character
/* SELECT * FROM customers
WHERE firstname LIKE 'L%';

SELECT * FROM customers
WHERE email LIKE '%gmail.com';

SELECT * FROM customers
WHERE firstname LIKE 'J_hn'; 

SELECT firstname, lastname, phone
FROM customers
WHERE phone LIKE '%555%'; */

-- Regular Expressions
/* SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'h';  -- find h in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^L';  -- find L of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^(L|A)'; -- find L or A of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'a$';  -- find a of last word in firstname

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '\d'; -- find number min 1 number

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '^[0-9]{5}$'; */ -- find number 0-9 of 5 position

-- Aggregate Functions
/* SELECT
AVG(bytes) AS avg_bytes,
SUM(bytes) AS sum_bytes,
MIN(bytes) AS min_bytes,
MAX(bytes) AS max_bytes,
COUNT(bytes) AS count_bytes
FROM tracks; */

-- COUNT of the row/record 
/* SELECT
COUNT(*),
COUNT(company)
FROM customers;

SELECT COUNT(DISTINCT country)  -- using DISTINCT not same data
FROM customers; */ 

-- adjust format
/* SELECT
firstname,
UPPER(firstname) AS upperName,
LOWER(firstname) AS lowerName,
SUBSTR(firstname, 1, 3) AS shortName -- SUBSTR() pull characters
FROM customers; */

-- ROUND adjust decimal
/* SELECT
AVG(bytes),
ROUND(AVG(bytes), 2) AS roundMeanByte
FROM tracks; */

-- adjust NULL by COALESCE() 
/* SELECT
company,
COALESCE(company, 'End Customer') AS cleanCompany -- End Customer insted NULL
FROM customers; */

-- date&time
/* SELECT DATE('now');

SELECT
invoicedate,
STRFTIME('%Y', invoicedate) AS year,
STRFTIME('%m', invoicedate) AS month,
STRFTIME('%d', invoicedate) AS day
FROM invoices; */

-- GROUP BY + Aggregate Functions
/* SELECT
country,
state,
COUNT(*) AS n
FROM customers
GROUP BY country, state;

SELECT
B.genreid,
B.name,
COUNT(A.name) AS count_n,
AVG(A.bytes/ (1024.0 * 1024.0)) AS avg_megabytes,
SUM(A.milliseconds/ 60000.0) AS total_minutes
FROM tracks AS A
JOIN genres AS B ON A.genreid = B.genreid
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10; */

-- HAVING
/* SELECT
country,
COUNT(*) AS n
FROM customers
GROUP BY country
HAVING n >= 5; */

-- ORDER BY sorting data
/* SELECT
firstname,
country
FROM customers
ORDER BY firstname;

SELECT
firstname,
country
FROM customers
ORDER BY firstname DESC;

SELECT
firstname,
country
FROM customers
ORDER BY country, firstname;

SELECT
firstname,
country
FROM customers
ORDER BY 2, 1;

SELECT
firstname,
country
FROM customers
ORDER BY 2 DESC, 1 DESC; */


-- INNERJOIN (syntax)
SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid;

--- 29-09-2022 14:50:33
--- chinook.db
SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid;

--- 29-09-2022 14:52:15
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- Using AND & OR 
/* SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com'); */

-- using IN operator instead OR
/* SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Belgium');*/

-- using BETWEEN.. AND.. operator
/* SELECT * FROM invoices
WHERE total BETWEEN 10 AND 20;

SELECT * FROM invoices
WHERE invoicedate BETWEEN '2010-01-01 00:00:00' AND '2010-01-31
23:59:59';

SELECT * FROM invoices
WHERE STRFTIME('%Y-%m', invoicedate) = '2010-01';

SELECT invoicedate, billingcountry FROM invoices
WHERE billingcountry BETWEEN 'Australia' AND 'Canada'; */

-- find NULL (missing value)
/* SELECT firstname, lastname, company
FROM customers
WHERE company IS NULL; */

-- not find NULL (missing value)
/* SELECT * FROM customers
WHERE company IS NOT NULL; */

-- not and logical operators
/* SELECT * FROM customers
WHERE NOT customerid >= 5; */
-- not and in
/* SELECT * FROM customers
WHERE country NOT IN ('USA', 'France', 'Belgium'); */
-- not and between
/* SELECT * FROM invoices
WHERE invoicedate NOT BETWEEN '2010-01-01' AND '2010-01-31'; */

-- LIKE & wildcards(% , _)  % ใช้match ตัวอักษรหรือตัวเลข >= 1 character 
-- _ ใช้match ตัวอักษรหรือตัวเลขเพียง 1 character
/* SELECT * FROM customers
WHERE firstname LIKE 'L%';

SELECT * FROM customers
WHERE email LIKE '%gmail.com';

SELECT * FROM customers
WHERE firstname LIKE 'J_hn'; 

SELECT firstname, lastname, phone
FROM customers
WHERE phone LIKE '%555%'; */

-- Regular Expressions
/* SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'h';  -- find h in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^L';  -- find L of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^(L|A)'; -- find L or A of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'a$';  -- find a of last word in firstname

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '\d'; -- find number min 1 number

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '^[0-9]{5}$'; */ -- find number 0-9 of 5 position

-- Aggregate Functions
/* SELECT
AVG(bytes) AS avg_bytes,
SUM(bytes) AS sum_bytes,
MIN(bytes) AS min_bytes,
MAX(bytes) AS max_bytes,
COUNT(bytes) AS count_bytes
FROM tracks; */

-- COUNT of the row/record 
/* SELECT
COUNT(*),
COUNT(company)
FROM customers;

SELECT COUNT(DISTINCT country)  -- using DISTINCT not same data
FROM customers; */ 

-- adjust format
/* SELECT
firstname,
UPPER(firstname) AS upperName,
LOWER(firstname) AS lowerName,
SUBSTR(firstname, 1, 3) AS shortName -- SUBSTR() pull characters
FROM customers; */

-- ROUND adjust decimal
/* SELECT
AVG(bytes),
ROUND(AVG(bytes), 2) AS roundMeanByte
FROM tracks; */

-- adjust NULL by COALESCE() 
/* SELECT
company,
COALESCE(company, 'End Customer') AS cleanCompany -- End Customer insted NULL
FROM customers; */

-- date&time
/* SELECT DATE('now');

SELECT
invoicedate,
STRFTIME('%Y', invoicedate) AS year,
STRFTIME('%m', invoicedate) AS month,
STRFTIME('%d', invoicedate) AS day
FROM invoices; */

-- GROUP BY + Aggregate Functions
/* SELECT
country,
state,
COUNT(*) AS n
FROM customers
GROUP BY country, state;

SELECT
B.genreid,
B.name,
COUNT(A.name) AS count_n,
AVG(A.bytes/ (1024.0 * 1024.0)) AS avg_megabytes,
SUM(A.milliseconds/ 60000.0) AS total_minutes
FROM tracks AS A
JOIN genres AS B ON A.genreid = B.genreid
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10; */

-- HAVING
/* SELECT
country,
COUNT(*) AS n
FROM customers
GROUP BY country
HAVING n >= 5; */

-- ORDER BY sorting data
/* SELECT
firstname,
country
FROM customers
ORDER BY firstname;

SELECT
firstname,
country
FROM customers
ORDER BY firstname DESC;

SELECT
firstname,
country
FROM customers
ORDER BY country, firstname;

SELECT
firstname,
country
FROM customers
ORDER BY 2, 1;

SELECT
firstname,
country
FROM customers
ORDER BY 2 DESC, 1 DESC; */


-- INNERJOIN (syntax)
/*SELECT
artists.artistid,
artists.name,
albums.title
FROM artists
INNER JOIN albums
ON artists.artistid = albums.artistid; 
 
SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid; */

-- LEFT JOIN
SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
LEFT JOIN albums AS B
ON A.artistid = B.artistid;

--- 29-09-2022 14:52:23
--- chinook.db
SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
LEFT JOIN albums AS B
ON A.artistid = B.artistid;

--- 29-09-2022 14:53:01
--- chinook.db
SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
LEFT JOIN albums AS B
ON A.artistid = B.artistid;

--- 29-09-2022 15:01:08
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- Using AND & OR 
/* SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com'); */

-- using IN operator instead OR
/* SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Belgium');*/

-- using BETWEEN.. AND.. operator
/* SELECT * FROM invoices
WHERE total BETWEEN 10 AND 20;

SELECT * FROM invoices
WHERE invoicedate BETWEEN '2010-01-01 00:00:00' AND '2010-01-31
23:59:59';

SELECT * FROM invoices
WHERE STRFTIME('%Y-%m', invoicedate) = '2010-01';

SELECT invoicedate, billingcountry FROM invoices
WHERE billingcountry BETWEEN 'Australia' AND 'Canada'; */

-- find NULL (missing value)
/* SELECT firstname, lastname, company
FROM customers
WHERE company IS NULL; */

-- not find NULL (missing value)
/* SELECT * FROM customers
WHERE company IS NOT NULL; */

-- not and logical operators
/* SELECT * FROM customers
WHERE NOT customerid >= 5; */
-- not and in
/* SELECT * FROM customers
WHERE country NOT IN ('USA', 'France', 'Belgium'); */
-- not and between
/* SELECT * FROM invoices
WHERE invoicedate NOT BETWEEN '2010-01-01' AND '2010-01-31'; */

-- LIKE & wildcards(% , _)  % ใช้match ตัวอักษรหรือตัวเลข >= 1 character 
-- _ ใช้match ตัวอักษรหรือตัวเลขเพียง 1 character
/* SELECT * FROM customers
WHERE firstname LIKE 'L%';

SELECT * FROM customers
WHERE email LIKE '%gmail.com';

SELECT * FROM customers
WHERE firstname LIKE 'J_hn'; 

SELECT firstname, lastname, phone
FROM customers
WHERE phone LIKE '%555%'; */

-- Regular Expressions
/* SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'h';  -- find h in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^L';  -- find L of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^(L|A)'; -- find L or A of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'a$';  -- find a of last word in firstname

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '\d'; -- find number min 1 number

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '^[0-9]{5}$'; */ -- find number 0-9 of 5 position

-- Aggregate Functions
/* SELECT
AVG(bytes) AS avg_bytes,
SUM(bytes) AS sum_bytes,
MIN(bytes) AS min_bytes,
MAX(bytes) AS max_bytes,
COUNT(bytes) AS count_bytes
FROM tracks; */

-- COUNT of the row/record 
/* SELECT
COUNT(*),
COUNT(company)
FROM customers;

SELECT COUNT(DISTINCT country)  -- using DISTINCT not same data
FROM customers; */ 

-- adjust format
/* SELECT
firstname,
UPPER(firstname) AS upperName,
LOWER(firstname) AS lowerName,
SUBSTR(firstname, 1, 3) AS shortName -- SUBSTR() pull characters
FROM customers; */

-- ROUND adjust decimal
/* SELECT
AVG(bytes),
ROUND(AVG(bytes), 2) AS roundMeanByte
FROM tracks; */

-- adjust NULL by COALESCE() 
/* SELECT
company,
COALESCE(company, 'End Customer') AS cleanCompany -- End Customer insted NULL
FROM customers; */

-- date&time
/* SELECT DATE('now');

SELECT
invoicedate,
STRFTIME('%Y', invoicedate) AS year,
STRFTIME('%m', invoicedate) AS month,
STRFTIME('%d', invoicedate) AS day
FROM invoices; */

-- GROUP BY + Aggregate Functions
/* SELECT
country,
state,
COUNT(*) AS n
FROM customers
GROUP BY country, state;

SELECT
B.genreid,
B.name,
COUNT(A.name) AS count_n,
AVG(A.bytes/ (1024.0 * 1024.0)) AS avg_megabytes,
SUM(A.milliseconds/ 60000.0) AS total_minutes
FROM tracks AS A
JOIN genres AS B ON A.genreid = B.genreid
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10; */

-- HAVING
/* SELECT
country,
COUNT(*) AS n
FROM customers
GROUP BY country
HAVING n >= 5; */

-- ORDER BY sorting data
/* SELECT
firstname,
country
FROM customers
ORDER BY firstname;

SELECT
firstname,
country
FROM customers
ORDER BY firstname DESC;

SELECT
firstname,
country
FROM customers
ORDER BY country, firstname;

SELECT
firstname,
country
FROM customers
ORDER BY 2, 1;

SELECT
firstname,
country
FROM customers
ORDER BY 2 DESC, 1 DESC; */


-- INNERJOIN (syntax)
/*SELECT
artists.artistid,
artists.name,
albums.title
FROM artists
INNER JOIN albums
ON artists.artistid = albums.artistid; 
 
SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid; */

-- LEFT JOIN
/* SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
LEFT JOIN albums AS B
ON A.artistid = B.artistid; */

SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName,
C.name AS trackName,
C.bytes,
C.milliseconds,
C.unitprice
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
INNER JOIN tracks AS C
ON B.albumid = C.albumid
WHERE A.artistid IN (99, 105, 220);

--- 29-09-2022 15:06:45
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- Using AND & OR 
/* SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com'); */

-- using IN operator instead OR
/* SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Belgium');*/

-- using BETWEEN.. AND.. operator
/* SELECT * FROM invoices
WHERE total BETWEEN 10 AND 20;

SELECT * FROM invoices
WHERE invoicedate BETWEEN '2010-01-01 00:00:00' AND '2010-01-31
23:59:59';

SELECT * FROM invoices
WHERE STRFTIME('%Y-%m', invoicedate) = '2010-01';

SELECT invoicedate, billingcountry FROM invoices
WHERE billingcountry BETWEEN 'Australia' AND 'Canada'; */

-- find NULL (missing value)
/* SELECT firstname, lastname, company
FROM customers
WHERE company IS NULL; */

-- not find NULL (missing value)
/* SELECT * FROM customers
WHERE company IS NOT NULL; */

-- not and logical operators
/* SELECT * FROM customers
WHERE NOT customerid >= 5; */
-- not and in
/* SELECT * FROM customers
WHERE country NOT IN ('USA', 'France', 'Belgium'); */
-- not and between
/* SELECT * FROM invoices
WHERE invoicedate NOT BETWEEN '2010-01-01' AND '2010-01-31'; */

-- LIKE & wildcards(% , _)  % ใช้match ตัวอักษรหรือตัวเลข >= 1 character 
-- _ ใช้match ตัวอักษรหรือตัวเลขเพียง 1 character
/* SELECT * FROM customers
WHERE firstname LIKE 'L%';

SELECT * FROM customers
WHERE email LIKE '%gmail.com';

SELECT * FROM customers
WHERE firstname LIKE 'J_hn'; 

SELECT firstname, lastname, phone
FROM customers
WHERE phone LIKE '%555%'; */

-- Regular Expressions
/* SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'h';  -- find h in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^L';  -- find L of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^(L|A)'; -- find L or A of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'a$';  -- find a of last word in firstname

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '\d'; -- find number min 1 number

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '^[0-9]{5}$'; */ -- find number 0-9 of 5 position

-- Aggregate Functions
/* SELECT
AVG(bytes) AS avg_bytes,
SUM(bytes) AS sum_bytes,
MIN(bytes) AS min_bytes,
MAX(bytes) AS max_bytes,
COUNT(bytes) AS count_bytes
FROM tracks; */

-- COUNT of the row/record 
/* SELECT
COUNT(*),
COUNT(company)
FROM customers;

SELECT COUNT(DISTINCT country)  -- using DISTINCT not same data
FROM customers; */ 

-- adjust format
/* SELECT
firstname,
UPPER(firstname) AS upperName,
LOWER(firstname) AS lowerName,
SUBSTR(firstname, 1, 3) AS shortName -- SUBSTR() pull characters
FROM customers; */

-- ROUND adjust decimal
/* SELECT
AVG(bytes),
ROUND(AVG(bytes), 2) AS roundMeanByte
FROM tracks; */

-- adjust NULL by COALESCE() 
/* SELECT
company,
COALESCE(company, 'End Customer') AS cleanCompany -- End Customer insted NULL
FROM customers; */

-- date&time
/* SELECT DATE('now');

SELECT
invoicedate,
STRFTIME('%Y', invoicedate) AS year,
STRFTIME('%m', invoicedate) AS month,
STRFTIME('%d', invoicedate) AS day
FROM invoices; */

-- GROUP BY + Aggregate Functions
/* SELECT
country,
state,
COUNT(*) AS n
FROM customers
GROUP BY country, state;

SELECT
B.genreid,
B.name,
COUNT(A.name) AS count_n,
AVG(A.bytes/ (1024.0 * 1024.0)) AS avg_megabytes,
SUM(A.milliseconds/ 60000.0) AS total_minutes
FROM tracks AS A
JOIN genres AS B ON A.genreid = B.genreid
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10; */

-- HAVING
/* SELECT
country,
COUNT(*) AS n
FROM customers
GROUP BY country
HAVING n >= 5; */

-- ORDER BY sorting data
/* SELECT
firstname,
country
FROM customers
ORDER BY firstname;

SELECT
firstname,
country
FROM customers
ORDER BY firstname DESC;

SELECT
firstname,
country
FROM customers
ORDER BY country, firstname;

SELECT
firstname,
country
FROM customers
ORDER BY 2, 1;

SELECT
firstname,
country
FROM customers
ORDER BY 2 DESC, 1 DESC; */


-- INNERJOIN (syntax)
/*SELECT
artists.artistid,
artists.name,
albums.title
FROM artists
INNER JOIN albums
ON artists.artistid = albums.artistid; 
 
SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid; */

-- LEFT JOIN
/* SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
LEFT JOIN albums AS B
ON A.artistid = B.artistid; */


/* SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName,
C.name AS trackName,
C.bytes,
C.milliseconds,
C.unitprice
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
INNER JOIN tracks AS C
ON B.albumid = C.albumid
WHERE A.artistid IN (99, 105, 220); */

-- UNION
/* SELECT firstname, lastname, country FROM customers
WHERE country = 'USA'
UNION
SELECT firstname, lastname, country FROM customers
WHERE country = 'United Kingdom'
ORDER BY country;*/

-- create new table using SELECT clause
CREATE TABLE t2 AS
SELECT A.*, B.*
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
WHERE A.artistid < 100;
-- select all columns from table t2
SELECT * FROM t2;

--- 29-09-2022 15:06:56
--- chinook.db
/***** ERROR ******
table t2 already exists
 ----- 
CREATE TABLE t2 AS
SELECT A.*, B.*
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
WHERE A.artistid < 100;
*****/

--- 29-09-2022 15:07:31
--- chinook.db
/***** ERROR ******
table t2 already exists
 ----- 
CREATE TABLE t2 AS
SELECT A.*, B.*
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
WHERE A.artistid < 100;
*****/

--- 29-09-2022 15:07:44
--- chinook.db
SELECT * FROM t2;

--- 29-09-2022 15:07:59
--- chinook.db
/***** ERROR ******
table t2 already exists
 ----- 
CREATE TABLE t2 AS
SELECT A.*, B.*
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
WHERE A.artistid < 100
-- select all columns from table t2
SELECT * FROM t2;
*****/

--- 29-09-2022 15:09:48
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- Using AND & OR 
/* SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com'); */

-- using IN operator instead OR
/* SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Belgium');*/

-- using BETWEEN.. AND.. operator
/* SELECT * FROM invoices
WHERE total BETWEEN 10 AND 20;

SELECT * FROM invoices
WHERE invoicedate BETWEEN '2010-01-01 00:00:00' AND '2010-01-31
23:59:59';

SELECT * FROM invoices
WHERE STRFTIME('%Y-%m', invoicedate) = '2010-01';

SELECT invoicedate, billingcountry FROM invoices
WHERE billingcountry BETWEEN 'Australia' AND 'Canada'; */

-- find NULL (missing value)
/* SELECT firstname, lastname, company
FROM customers
WHERE company IS NULL; */

-- not find NULL (missing value)
/* SELECT * FROM customers
WHERE company IS NOT NULL; */

-- not and logical operators
/* SELECT * FROM customers
WHERE NOT customerid >= 5; */
-- not and in
/* SELECT * FROM customers
WHERE country NOT IN ('USA', 'France', 'Belgium'); */
-- not and between
/* SELECT * FROM invoices
WHERE invoicedate NOT BETWEEN '2010-01-01' AND '2010-01-31'; */

-- LIKE & wildcards(% , _)  % ใช้match ตัวอักษรหรือตัวเลข >= 1 character 
-- _ ใช้match ตัวอักษรหรือตัวเลขเพียง 1 character
/* SELECT * FROM customers
WHERE firstname LIKE 'L%';

SELECT * FROM customers
WHERE email LIKE '%gmail.com';

SELECT * FROM customers
WHERE firstname LIKE 'J_hn'; 

SELECT firstname, lastname, phone
FROM customers
WHERE phone LIKE '%555%'; */

-- Regular Expressions
/* SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'h';  -- find h in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^L';  -- find L of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^(L|A)'; -- find L or A of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'a$';  -- find a of last word in firstname

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '\d'; -- find number min 1 number

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '^[0-9]{5}$'; */ -- find number 0-9 of 5 position

-- Aggregate Functions
/* SELECT
AVG(bytes) AS avg_bytes,
SUM(bytes) AS sum_bytes,
MIN(bytes) AS min_bytes,
MAX(bytes) AS max_bytes,
COUNT(bytes) AS count_bytes
FROM tracks; */

-- COUNT of the row/record 
/* SELECT
COUNT(*),
COUNT(company)
FROM customers;

SELECT COUNT(DISTINCT country)  -- using DISTINCT not same data
FROM customers; */ 

-- adjust format
/* SELECT
firstname,
UPPER(firstname) AS upperName,
LOWER(firstname) AS lowerName,
SUBSTR(firstname, 1, 3) AS shortName -- SUBSTR() pull characters
FROM customers; */

-- ROUND adjust decimal
/* SELECT
AVG(bytes),
ROUND(AVG(bytes), 2) AS roundMeanByte
FROM tracks; */

-- adjust NULL by COALESCE() 
/* SELECT
company,
COALESCE(company, 'End Customer') AS cleanCompany -- End Customer insted NULL
FROM customers; */

-- date&time
/* SELECT DATE('now');

SELECT
invoicedate,
STRFTIME('%Y', invoicedate) AS year,
STRFTIME('%m', invoicedate) AS month,
STRFTIME('%d', invoicedate) AS day
FROM invoices; */

-- GROUP BY + Aggregate Functions
/* SELECT
country,
state,
COUNT(*) AS n
FROM customers
GROUP BY country, state;

SELECT
B.genreid,
B.name,
COUNT(A.name) AS count_n,
AVG(A.bytes/ (1024.0 * 1024.0)) AS avg_megabytes,
SUM(A.milliseconds/ 60000.0) AS total_minutes
FROM tracks AS A
JOIN genres AS B ON A.genreid = B.genreid
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10; */

-- HAVING
/* SELECT
country,
COUNT(*) AS n
FROM customers
GROUP BY country
HAVING n >= 5; */

-- ORDER BY sorting data
/* SELECT
firstname,
country
FROM customers
ORDER BY firstname;

SELECT
firstname,
country
FROM customers
ORDER BY firstname DESC;

SELECT
firstname,
country
FROM customers
ORDER BY country, firstname;

SELECT
firstname,
country
FROM customers
ORDER BY 2, 1;

SELECT
firstname,
country
FROM customers
ORDER BY 2 DESC, 1 DESC; */


-- INNERJOIN (syntax)
/*SELECT
artists.artistid,
artists.name,
albums.title
FROM artists
INNER JOIN albums
ON artists.artistid = albums.artistid; 
 
SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid; */

-- LEFT JOIN
/* SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
LEFT JOIN albums AS B
ON A.artistid = B.artistid; */


/* SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName,
C.name AS trackName,
C.bytes,
C.milliseconds,
C.unitprice
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
INNER JOIN tracks AS C
ON B.albumid = C.albumid
WHERE A.artistid IN (99, 105, 220); */

-- UNION
/* SELECT firstname, lastname, country FROM customers
WHERE country = 'USA'
UNION
SELECT firstname, lastname, country FROM customers
WHERE country = 'United Kingdom'
ORDER BY country;*/

-- create new table using SELECT clause
/* CREATE TABLE t2 AS
SELECT A.*, B.*
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
WHERE A.artistid < 100; */
-- select all columns from table t2
/* SELECT * FROM t2; */

-- DROP TABLE (delete table)
/* DROP TABLE t1;
DROP TABLE t2; */

SELECT
company,
CASE
WHEN company IS NULL THEN 'end customers'
WHEN company IS NOT NULL THEN 'corporate'
END AS segment
FROM customers;

--- 29-09-2022 15:10:34
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- Using AND & OR 
/* SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com'); */

-- using IN operator instead OR
/* SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Belgium');*/

-- using BETWEEN.. AND.. operator
/* SELECT * FROM invoices
WHERE total BETWEEN 10 AND 20;

SELECT * FROM invoices
WHERE invoicedate BETWEEN '2010-01-01 00:00:00' AND '2010-01-31
23:59:59';

SELECT * FROM invoices
WHERE STRFTIME('%Y-%m', invoicedate) = '2010-01';

SELECT invoicedate, billingcountry FROM invoices
WHERE billingcountry BETWEEN 'Australia' AND 'Canada'; */

-- find NULL (missing value)
/* SELECT firstname, lastname, company
FROM customers
WHERE company IS NULL; */

-- not find NULL (missing value)
/* SELECT * FROM customers
WHERE company IS NOT NULL; */

-- not and logical operators
/* SELECT * FROM customers
WHERE NOT customerid >= 5; */
-- not and in
/* SELECT * FROM customers
WHERE country NOT IN ('USA', 'France', 'Belgium'); */
-- not and between
/* SELECT * FROM invoices
WHERE invoicedate NOT BETWEEN '2010-01-01' AND '2010-01-31'; */

-- LIKE & wildcards(% , _)  % ใช้match ตัวอักษรหรือตัวเลข >= 1 character 
-- _ ใช้match ตัวอักษรหรือตัวเลขเพียง 1 character
/* SELECT * FROM customers
WHERE firstname LIKE 'L%';

SELECT * FROM customers
WHERE email LIKE '%gmail.com';

SELECT * FROM customers
WHERE firstname LIKE 'J_hn'; 

SELECT firstname, lastname, phone
FROM customers
WHERE phone LIKE '%555%'; */

-- Regular Expressions
/* SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'h';  -- find h in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^L';  -- find L of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^(L|A)'; -- find L or A of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'a$';  -- find a of last word in firstname

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '\d'; -- find number min 1 number

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '^[0-9]{5}$'; */ -- find number 0-9 of 5 position

-- Aggregate Functions
/* SELECT
AVG(bytes) AS avg_bytes,
SUM(bytes) AS sum_bytes,
MIN(bytes) AS min_bytes,
MAX(bytes) AS max_bytes,
COUNT(bytes) AS count_bytes
FROM tracks; */

-- COUNT of the row/record 
/* SELECT
COUNT(*),
COUNT(company)
FROM customers;

SELECT COUNT(DISTINCT country)  -- using DISTINCT not same data
FROM customers; */ 

-- adjust format
/* SELECT
firstname,
UPPER(firstname) AS upperName,
LOWER(firstname) AS lowerName,
SUBSTR(firstname, 1, 3) AS shortName -- SUBSTR() pull characters
FROM customers; */

-- ROUND adjust decimal
/* SELECT
AVG(bytes),
ROUND(AVG(bytes), 2) AS roundMeanByte
FROM tracks; */

-- adjust NULL by COALESCE() 
/* SELECT
company,
COALESCE(company, 'End Customer') AS cleanCompany -- End Customer insted NULL
FROM customers; */

-- date&time
/* SELECT DATE('now');

SELECT
invoicedate,
STRFTIME('%Y', invoicedate) AS year,
STRFTIME('%m', invoicedate) AS month,
STRFTIME('%d', invoicedate) AS day
FROM invoices; */

-- GROUP BY + Aggregate Functions
/* SELECT
country,
state,
COUNT(*) AS n
FROM customers
GROUP BY country, state;

SELECT
B.genreid,
B.name,
COUNT(A.name) AS count_n,
AVG(A.bytes/ (1024.0 * 1024.0)) AS avg_megabytes,
SUM(A.milliseconds/ 60000.0) AS total_minutes
FROM tracks AS A
JOIN genres AS B ON A.genreid = B.genreid
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10; */

-- HAVING
/* SELECT
country,
COUNT(*) AS n
FROM customers
GROUP BY country
HAVING n >= 5; */

-- ORDER BY sorting data
/* SELECT
firstname,
country
FROM customers
ORDER BY firstname;

SELECT
firstname,
country
FROM customers
ORDER BY firstname DESC;

SELECT
firstname,
country
FROM customers
ORDER BY country, firstname;

SELECT
firstname,
country
FROM customers
ORDER BY 2, 1;

SELECT
firstname,
country
FROM customers
ORDER BY 2 DESC, 1 DESC; */


-- INNERJOIN (syntax)
/*SELECT
artists.artistid,
artists.name,
albums.title
FROM artists
INNER JOIN albums
ON artists.artistid = albums.artistid; 
 
SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid; */

-- LEFT JOIN
/* SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
LEFT JOIN albums AS B
ON A.artistid = B.artistid; */


/* SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName,
C.name AS trackName,
C.bytes,
C.milliseconds,
C.unitprice
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
INNER JOIN tracks AS C
ON B.albumid = C.albumid
WHERE A.artistid IN (99, 105, 220); */

-- UNION
/* SELECT firstname, lastname, country FROM customers
WHERE country = 'USA'
UNION
SELECT firstname, lastname, country FROM customers
WHERE country = 'United Kingdom'
ORDER BY country;*/

-- create new table using SELECT clause
/* CREATE TABLE t2 AS
SELECT A.*, B.*
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
WHERE A.artistid < 100; */
-- select all columns from table t2
/* SELECT * FROM t2; */

-- DROP TABLE (delete table)
/* DROP TABLE t1;
DROP TABLE t2; */

-- CASE 2 codition
/* SELECT
company,
CASE
WHEN company IS NULL THEN 'end customers'
WHEN company IS NOT NULL THEN 'corporate'
END AS segment
FROM customers; */

SELECT
company,
CASE
WHEN company IS NULL THEN 'end customers'
ELSE 'corporate'
END AS segment
FROM customers;

--- 29-09-2022 15:11:17
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- Using AND & OR 
/* SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com'); */

-- using IN operator instead OR
/* SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Belgium');*/

-- using BETWEEN.. AND.. operator
/* SELECT * FROM invoices
WHERE total BETWEEN 10 AND 20;

SELECT * FROM invoices
WHERE invoicedate BETWEEN '2010-01-01 00:00:00' AND '2010-01-31
23:59:59';

SELECT * FROM invoices
WHERE STRFTIME('%Y-%m', invoicedate) = '2010-01';

SELECT invoicedate, billingcountry FROM invoices
WHERE billingcountry BETWEEN 'Australia' AND 'Canada'; */

-- find NULL (missing value)
/* SELECT firstname, lastname, company
FROM customers
WHERE company IS NULL; */

-- not find NULL (missing value)
/* SELECT * FROM customers
WHERE company IS NOT NULL; */

-- not and logical operators
/* SELECT * FROM customers
WHERE NOT customerid >= 5; */
-- not and in
/* SELECT * FROM customers
WHERE country NOT IN ('USA', 'France', 'Belgium'); */
-- not and between
/* SELECT * FROM invoices
WHERE invoicedate NOT BETWEEN '2010-01-01' AND '2010-01-31'; */

-- LIKE & wildcards(% , _)  % ใช้match ตัวอักษรหรือตัวเลข >= 1 character 
-- _ ใช้match ตัวอักษรหรือตัวเลขเพียง 1 character
/* SELECT * FROM customers
WHERE firstname LIKE 'L%';

SELECT * FROM customers
WHERE email LIKE '%gmail.com';

SELECT * FROM customers
WHERE firstname LIKE 'J_hn'; 

SELECT firstname, lastname, phone
FROM customers
WHERE phone LIKE '%555%'; */

-- Regular Expressions
/* SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'h';  -- find h in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^L';  -- find L of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^(L|A)'; -- find L or A of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'a$';  -- find a of last word in firstname

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '\d'; -- find number min 1 number

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '^[0-9]{5}$'; */ -- find number 0-9 of 5 position

-- Aggregate Functions
/* SELECT
AVG(bytes) AS avg_bytes,
SUM(bytes) AS sum_bytes,
MIN(bytes) AS min_bytes,
MAX(bytes) AS max_bytes,
COUNT(bytes) AS count_bytes
FROM tracks; */

-- COUNT of the row/record 
/* SELECT
COUNT(*),
COUNT(company)
FROM customers;

SELECT COUNT(DISTINCT country)  -- using DISTINCT not same data
FROM customers; */ 

-- adjust format
/* SELECT
firstname,
UPPER(firstname) AS upperName,
LOWER(firstname) AS lowerName,
SUBSTR(firstname, 1, 3) AS shortName -- SUBSTR() pull characters
FROM customers; */

-- ROUND adjust decimal
/* SELECT
AVG(bytes),
ROUND(AVG(bytes), 2) AS roundMeanByte
FROM tracks; */

-- adjust NULL by COALESCE() 
/* SELECT
company,
COALESCE(company, 'End Customer') AS cleanCompany -- End Customer insted NULL
FROM customers; */

-- date&time
/* SELECT DATE('now');

SELECT
invoicedate,
STRFTIME('%Y', invoicedate) AS year,
STRFTIME('%m', invoicedate) AS month,
STRFTIME('%d', invoicedate) AS day
FROM invoices; */

-- GROUP BY + Aggregate Functions
/* SELECT
country,
state,
COUNT(*) AS n
FROM customers
GROUP BY country, state;

SELECT
B.genreid,
B.name,
COUNT(A.name) AS count_n,
AVG(A.bytes/ (1024.0 * 1024.0)) AS avg_megabytes,
SUM(A.milliseconds/ 60000.0) AS total_minutes
FROM tracks AS A
JOIN genres AS B ON A.genreid = B.genreid
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10; */

-- HAVING
/* SELECT
country,
COUNT(*) AS n
FROM customers
GROUP BY country
HAVING n >= 5; */

-- ORDER BY sorting data
/* SELECT
firstname,
country
FROM customers
ORDER BY firstname;

SELECT
firstname,
country
FROM customers
ORDER BY firstname DESC;

SELECT
firstname,
country
FROM customers
ORDER BY country, firstname;

SELECT
firstname,
country
FROM customers
ORDER BY 2, 1;

SELECT
firstname,
country
FROM customers
ORDER BY 2 DESC, 1 DESC; */


-- INNERJOIN (syntax)
/*SELECT
artists.artistid,
artists.name,
albums.title
FROM artists
INNER JOIN albums
ON artists.artistid = albums.artistid; 
 
SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid; */

-- LEFT JOIN
/* SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
LEFT JOIN albums AS B
ON A.artistid = B.artistid; */


/* SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName,
C.name AS trackName,
C.bytes,
C.milliseconds,
C.unitprice
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
INNER JOIN tracks AS C
ON B.albumid = C.albumid
WHERE A.artistid IN (99, 105, 220); */

-- UNION
/* SELECT firstname, lastname, country FROM customers
WHERE country = 'USA'
UNION
SELECT firstname, lastname, country FROM customers
WHERE country = 'United Kingdom'
ORDER BY country;*/

-- create new table using SELECT clause
/* CREATE TABLE t2 AS
SELECT A.*, B.*
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
WHERE A.artistid < 100; */
-- select all columns from table t2
/* SELECT * FROM t2; */

-- DROP TABLE (delete table)
/* DROP TABLE t1;
DROP TABLE t2; */

-- CASE 2 codition
/* SELECT
company,
CASE
WHEN company IS NULL THEN 'end customers'
WHEN company IS NOT NULL THEN 'corporate'
END AS segment
FROM customers; 

SELECT
company,
CASE
WHEN company IS NULL THEN 'end customers'
ELSE 'corporate'
END AS segment
FROM customers; */

--
SELECT
total,
CASE
WHEN total >= 20 THEN 'high value'
WHEN total >= 10 THEN 'medium value'
ELSE 'low value'
END AS segment
FROM invoices;

--- 29-09-2022 15:12:50
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- Using AND & OR 
/* SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com'); */

-- using IN operator instead OR
/* SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Belgium');*/

-- using BETWEEN.. AND.. operator
/* SELECT * FROM invoices
WHERE total BETWEEN 10 AND 20;

SELECT * FROM invoices
WHERE invoicedate BETWEEN '2010-01-01 00:00:00' AND '2010-01-31
23:59:59';

SELECT * FROM invoices
WHERE STRFTIME('%Y-%m', invoicedate) = '2010-01';

SELECT invoicedate, billingcountry FROM invoices
WHERE billingcountry BETWEEN 'Australia' AND 'Canada'; */

-- find NULL (missing value)
/* SELECT firstname, lastname, company
FROM customers
WHERE company IS NULL; */

-- not find NULL (missing value)
/* SELECT * FROM customers
WHERE company IS NOT NULL; */

-- not and logical operators
/* SELECT * FROM customers
WHERE NOT customerid >= 5; */
-- not and in
/* SELECT * FROM customers
WHERE country NOT IN ('USA', 'France', 'Belgium'); */
-- not and between
/* SELECT * FROM invoices
WHERE invoicedate NOT BETWEEN '2010-01-01' AND '2010-01-31'; */

-- LIKE & wildcards(% , _)  % ใช้match ตัวอักษรหรือตัวเลข >= 1 character 
-- _ ใช้match ตัวอักษรหรือตัวเลขเพียง 1 character
/* SELECT * FROM customers
WHERE firstname LIKE 'L%';

SELECT * FROM customers
WHERE email LIKE '%gmail.com';

SELECT * FROM customers
WHERE firstname LIKE 'J_hn'; 

SELECT firstname, lastname, phone
FROM customers
WHERE phone LIKE '%555%'; */

-- Regular Expressions
/* SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'h';  -- find h in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^L';  -- find L of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^(L|A)'; -- find L or A of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'a$';  -- find a of last word in firstname

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '\d'; -- find number min 1 number

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '^[0-9]{5}$'; */ -- find number 0-9 of 5 position

-- Aggregate Functions
/* SELECT
AVG(bytes) AS avg_bytes,
SUM(bytes) AS sum_bytes,
MIN(bytes) AS min_bytes,
MAX(bytes) AS max_bytes,
COUNT(bytes) AS count_bytes
FROM tracks; */

-- COUNT of the row/record 
/* SELECT
COUNT(*),
COUNT(company)
FROM customers;

SELECT COUNT(DISTINCT country)  -- using DISTINCT not same data
FROM customers; */ 

-- adjust format
/* SELECT
firstname,
UPPER(firstname) AS upperName,
LOWER(firstname) AS lowerName,
SUBSTR(firstname, 1, 3) AS shortName -- SUBSTR() pull characters
FROM customers; */

-- ROUND adjust decimal
/* SELECT
AVG(bytes),
ROUND(AVG(bytes), 2) AS roundMeanByte
FROM tracks; */

-- adjust NULL by COALESCE() 
/* SELECT
company,
COALESCE(company, 'End Customer') AS cleanCompany -- End Customer insted NULL
FROM customers; */

-- date&time
/* SELECT DATE('now');

SELECT
invoicedate,
STRFTIME('%Y', invoicedate) AS year,
STRFTIME('%m', invoicedate) AS month,
STRFTIME('%d', invoicedate) AS day
FROM invoices; */

-- GROUP BY + Aggregate Functions
/* SELECT
country,
state,
COUNT(*) AS n
FROM customers
GROUP BY country, state;

SELECT
B.genreid,
B.name,
COUNT(A.name) AS count_n,
AVG(A.bytes/ (1024.0 * 1024.0)) AS avg_megabytes,
SUM(A.milliseconds/ 60000.0) AS total_minutes
FROM tracks AS A
JOIN genres AS B ON A.genreid = B.genreid
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10; */

-- HAVING
/* SELECT
country,
COUNT(*) AS n
FROM customers
GROUP BY country
HAVING n >= 5; */

-- ORDER BY sorting data
/* SELECT
firstname,
country
FROM customers
ORDER BY firstname;

SELECT
firstname,
country
FROM customers
ORDER BY firstname DESC;

SELECT
firstname,
country
FROM customers
ORDER BY country, firstname;

SELECT
firstname,
country
FROM customers
ORDER BY 2, 1;

SELECT
firstname,
country
FROM customers
ORDER BY 2 DESC, 1 DESC; */


-- INNERJOIN (syntax)
/*SELECT
artists.artistid,
artists.name,
albums.title
FROM artists
INNER JOIN albums
ON artists.artistid = albums.artistid; 
 
SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid; */

-- LEFT JOIN
/* SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
LEFT JOIN albums AS B
ON A.artistid = B.artistid; */


/* SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName,
C.name AS trackName,
C.bytes,
C.milliseconds,
C.unitprice
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
INNER JOIN tracks AS C
ON B.albumid = C.albumid
WHERE A.artistid IN (99, 105, 220); */

-- UNION
/* SELECT firstname, lastname, country FROM customers
WHERE country = 'USA'
UNION
SELECT firstname, lastname, country FROM customers
WHERE country = 'United Kingdom'
ORDER BY country;*/

-- create new table using SELECT clause
/* CREATE TABLE t2 AS
SELECT A.*, B.*
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
WHERE A.artistid < 100; */
-- select all columns from table t2
/* SELECT * FROM t2; */

-- DROP TABLE (delete table)
/* DROP TABLE t1;
DROP TABLE t2; */

-- 2 CASE  codition
/* SELECT
company,
CASE
WHEN company IS NULL THEN 'end customers'
WHEN company IS NOT NULL THEN 'corporate'
END AS segment
FROM customers; 

SELECT
company,
CASE
WHEN company IS NULL THEN 'end customers'
ELSE 'corporate'
END AS segment
FROM customers; */

-- more than 2 CASE  codition
/* SELECT
total,
CASE
WHEN total >= 20 THEN 'high value'
WHEN total >= 10 THEN 'medium value'
ELSE 'low value'
END AS segment
FROM invoices; */

-- CASE with Aggregate Function
-- count each segment
SELECT
-- first column using case
CASE
WHEN total >= 20 THEN 'high value'
WHEN total >= 10 THEN 'medium value'
ELSE 'low value'
END AS segment,
-- second column using aggregate function
COUNT(
CASE
WHEN total >= 20 THEN 'high value'
WHEN total >= 10 THEN 'medium value'
ELSE 'low value'
END
) AS n
FROM invoices
GROUP BY 1
ORDER BY 2;

--- 29-09-2022 15:13:25
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- Using AND & OR 
/* SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com'); */

-- using IN operator instead OR
/* SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Belgium');*/

-- using BETWEEN.. AND.. operator
/* SELECT * FROM invoices
WHERE total BETWEEN 10 AND 20;

SELECT * FROM invoices
WHERE invoicedate BETWEEN '2010-01-01 00:00:00' AND '2010-01-31
23:59:59';

SELECT * FROM invoices
WHERE STRFTIME('%Y-%m', invoicedate) = '2010-01';

SELECT invoicedate, billingcountry FROM invoices
WHERE billingcountry BETWEEN 'Australia' AND 'Canada'; */

-- find NULL (missing value)
/* SELECT firstname, lastname, company
FROM customers
WHERE company IS NULL; */

-- not find NULL (missing value)
/* SELECT * FROM customers
WHERE company IS NOT NULL; */

-- not and logical operators
/* SELECT * FROM customers
WHERE NOT customerid >= 5; */
-- not and in
/* SELECT * FROM customers
WHERE country NOT IN ('USA', 'France', 'Belgium'); */
-- not and between
/* SELECT * FROM invoices
WHERE invoicedate NOT BETWEEN '2010-01-01' AND '2010-01-31'; */

-- LIKE & wildcards(% , _)  % ใช้match ตัวอักษรหรือตัวเลข >= 1 character 
-- _ ใช้match ตัวอักษรหรือตัวเลขเพียง 1 character
/* SELECT * FROM customers
WHERE firstname LIKE 'L%';

SELECT * FROM customers
WHERE email LIKE '%gmail.com';

SELECT * FROM customers
WHERE firstname LIKE 'J_hn'; 

SELECT firstname, lastname, phone
FROM customers
WHERE phone LIKE '%555%'; */

-- Regular Expressions
/* SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'h';  -- find h in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^L';  -- find L of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^(L|A)'; -- find L or A of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'a$';  -- find a of last word in firstname

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '\d'; -- find number min 1 number

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '^[0-9]{5}$'; */ -- find number 0-9 of 5 position

-- Aggregate Functions
/* SELECT
AVG(bytes) AS avg_bytes,
SUM(bytes) AS sum_bytes,
MIN(bytes) AS min_bytes,
MAX(bytes) AS max_bytes,
COUNT(bytes) AS count_bytes
FROM tracks; */

-- COUNT of the row/record 
/* SELECT
COUNT(*),
COUNT(company)
FROM customers;

SELECT COUNT(DISTINCT country)  -- using DISTINCT not same data
FROM customers; */ 

-- adjust format
/* SELECT
firstname,
UPPER(firstname) AS upperName,
LOWER(firstname) AS lowerName,
SUBSTR(firstname, 1, 3) AS shortName -- SUBSTR() pull characters
FROM customers; */

-- ROUND adjust decimal
/* SELECT
AVG(bytes),
ROUND(AVG(bytes), 2) AS roundMeanByte
FROM tracks; */

-- adjust NULL by COALESCE() 
/* SELECT
company,
COALESCE(company, 'End Customer') AS cleanCompany -- End Customer insted NULL
FROM customers; */

-- date&time
/* SELECT DATE('now');

SELECT
invoicedate,
STRFTIME('%Y', invoicedate) AS year,
STRFTIME('%m', invoicedate) AS month,
STRFTIME('%d', invoicedate) AS day
FROM invoices; */

-- GROUP BY + Aggregate Functions
/* SELECT
country,
state,
COUNT(*) AS n
FROM customers
GROUP BY country, state;

SELECT
B.genreid,
B.name,
COUNT(A.name) AS count_n,
AVG(A.bytes/ (1024.0 * 1024.0)) AS avg_megabytes,
SUM(A.milliseconds/ 60000.0) AS total_minutes
FROM tracks AS A
JOIN genres AS B ON A.genreid = B.genreid
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10; */

-- HAVING
/* SELECT
country,
COUNT(*) AS n
FROM customers
GROUP BY country
HAVING n >= 5; */

-- ORDER BY sorting data
/* SELECT
firstname,
country
FROM customers
ORDER BY firstname;

SELECT
firstname,
country
FROM customers
ORDER BY firstname DESC;

SELECT
firstname,
country
FROM customers
ORDER BY country, firstname;

SELECT
firstname,
country
FROM customers
ORDER BY 2, 1;

SELECT
firstname,
country
FROM customers
ORDER BY 2 DESC, 1 DESC; */


-- INNERJOIN (syntax)
/*SELECT
artists.artistid,
artists.name,
albums.title
FROM artists
INNER JOIN albums
ON artists.artistid = albums.artistid; 
 
SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid; */

-- LEFT JOIN
/* SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
LEFT JOIN albums AS B
ON A.artistid = B.artistid; */


/* SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName,
C.name AS trackName,
C.bytes,
C.milliseconds,
C.unitprice
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
INNER JOIN tracks AS C
ON B.albumid = C.albumid
WHERE A.artistid IN (99, 105, 220); */

-- UNION
/* SELECT firstname, lastname, country FROM customers
WHERE country = 'USA'
UNION
SELECT firstname, lastname, country FROM customers
WHERE country = 'United Kingdom'
ORDER BY country;*/

-- create new table using SELECT clause
/* CREATE TABLE t2 AS
SELECT A.*, B.*
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
WHERE A.artistid < 100; */
-- select all columns from table t2
/* SELECT * FROM t2; */

-- DROP TABLE (delete table)
/* DROP TABLE t1;
DROP TABLE t2; */

-- 2 CASE  codition
/* SELECT
company,
CASE
WHEN company IS NULL THEN 'end customers'
WHEN company IS NOT NULL THEN 'corporate'
END AS segment
FROM customers; 

SELECT
company,
CASE
WHEN company IS NULL THEN 'end customers'
ELSE 'corporate'
END AS segment
FROM customers; */

-- more than 2 CASE  codition
/* SELECT
total,
CASE
WHEN total >= 20 THEN 'high value'
WHEN total >= 10 THEN 'medium value'
ELSE 'low value'
END AS segment
FROM invoices; */

-- CASE with Aggregate Function
-- count each segment
/* SELECT
-- first column using case
CASE
WHEN total >= 20 THEN 'high value'
WHEN total >= 10 THEN 'medium value'
ELSE 'low value'
END AS segment,
-- second column using aggregate function
COUNT(
CASE
WHEN total >= 20 THEN 'high value'
WHEN total >= 10 THEN 'medium value'
ELSE 'low value'
END
) AS n
FROM invoices
GROUP BY 1
ORDER BY 2;  */

-- CASE type Subqueries
-- count numbers of high, medium and low value segments
SELECT
segment,
COUNT(segment) AS n
FROM
(SELECT
CASE
WHEN total >= 20 THEN 'high value'
WHEN total >= 10 THEN 'medium value'
ELSE 'low value'
END AS segment
FROM invoices) -- code in parentheses () is called inner subquery
GROUP BY 1
ORDER BY 2;

--- 29-09-2022 15:17:48
--- chinook.db
SELECT -- 1+2 Subquery in WHERE clause with IN
customerid,
firstname || ' ' || lastname AS fullName,
address,
country,
email
FROM customers
WHERE customerid IN (
SELECT customerid FROM (
SELECT customerid, SUM(total) AS totalSpend
FROM invoices
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5
)
);

--- 29-09-2022 15:19:31
--- chinook.db
-- 
/* SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'; */

-- join columns firstname&lastname(using the pipe ( || )) (add white space and change name of column)
/* SELECT
firstname  || ' ' || lastname AS Fullname,
country
FROM customers
WHERE country = 'USA'; */

-- select 10 customers from USA
/*
SELECT
firstname,
lastname,
country
FROM customers
WHERE country = 'USA'
LIMIT 10;
*/

-- tranform column with math
/* SELECT
name,
bytes/ (1024.0 * 1024.0) AS mb,
milliseconds/ 60000.0 AS minutes
FROM tracks; */

-- Using AND & OR 
/* SELECT
firstname,
lastname,
email,
country
FROM customers
WHERE (country = 'USA' OR country = 'France')
AND (email = 'fharris@google.com' OR email =
'marc.dubois@hotmail.com'); */

-- using IN operator instead OR
/* SELECT * FROM customers
WHERE country IN ('USA', 'France', 'Belgium');*/

-- using BETWEEN.. AND.. operator
/* SELECT * FROM invoices
WHERE total BETWEEN 10 AND 20;

SELECT * FROM invoices
WHERE invoicedate BETWEEN '2010-01-01 00:00:00' AND '2010-01-31
23:59:59';

SELECT * FROM invoices
WHERE STRFTIME('%Y-%m', invoicedate) = '2010-01';

SELECT invoicedate, billingcountry FROM invoices
WHERE billingcountry BETWEEN 'Australia' AND 'Canada'; */

-- find NULL (missing value)
/* SELECT firstname, lastname, company
FROM customers
WHERE company IS NULL; */

-- not find NULL (missing value)
/* SELECT * FROM customers
WHERE company IS NOT NULL; */

-- not and logical operators
/* SELECT * FROM customers
WHERE NOT customerid >= 5; */
-- not and in
/* SELECT * FROM customers
WHERE country NOT IN ('USA', 'France', 'Belgium'); */
-- not and between
/* SELECT * FROM invoices
WHERE invoicedate NOT BETWEEN '2010-01-01' AND '2010-01-31'; */

-- LIKE & wildcards(% , _)  % ใช้match ตัวอักษรหรือตัวเลข >= 1 character 
-- _ ใช้match ตัวอักษรหรือตัวเลขเพียง 1 character
/* SELECT * FROM customers
WHERE firstname LIKE 'L%';

SELECT * FROM customers
WHERE email LIKE '%gmail.com';

SELECT * FROM customers
WHERE firstname LIKE 'J_hn'; 

SELECT firstname, lastname, phone
FROM customers
WHERE phone LIKE '%555%'; */

-- Regular Expressions
/* SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'h';  -- find h in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^L';  -- find L of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP '^(L|A)'; -- find L or A of first word in firstname

SELECT firstname, postalcode FROM customers
WHERE firstname REGEXP 'a$';  -- find a of last word in firstname

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '\d'; -- find number min 1 number

SELECT firstname, postalcode FROM customers
WHERE postalcode REGEXP '^[0-9]{5}$'; */ -- find number 0-9 of 5 position

-- Aggregate Functions
/* SELECT
AVG(bytes) AS avg_bytes,
SUM(bytes) AS sum_bytes,
MIN(bytes) AS min_bytes,
MAX(bytes) AS max_bytes,
COUNT(bytes) AS count_bytes
FROM tracks; */

-- COUNT of the row/record 
/* SELECT
COUNT(*),
COUNT(company)
FROM customers;

SELECT COUNT(DISTINCT country)  -- using DISTINCT not same data
FROM customers; */ 

-- adjust format
/* SELECT
firstname,
UPPER(firstname) AS upperName,
LOWER(firstname) AS lowerName,
SUBSTR(firstname, 1, 3) AS shortName -- SUBSTR() pull characters
FROM customers; */

-- ROUND adjust decimal
/* SELECT
AVG(bytes),
ROUND(AVG(bytes), 2) AS roundMeanByte
FROM tracks; */

-- adjust NULL by COALESCE() 
/* SELECT
company,
COALESCE(company, 'End Customer') AS cleanCompany -- End Customer insted NULL
FROM customers; */

-- date&time
/* SELECT DATE('now');

SELECT
invoicedate,
STRFTIME('%Y', invoicedate) AS year,
STRFTIME('%m', invoicedate) AS month,
STRFTIME('%d', invoicedate) AS day
FROM invoices; */

-- GROUP BY + Aggregate Functions
/* SELECT
country,
state,
COUNT(*) AS n
FROM customers
GROUP BY country, state;

SELECT
B.genreid,
B.name,
COUNT(A.name) AS count_n,
AVG(A.bytes/ (1024.0 * 1024.0)) AS avg_megabytes,
SUM(A.milliseconds/ 60000.0) AS total_minutes
FROM tracks AS A
JOIN genres AS B ON A.genreid = B.genreid
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10; */

-- HAVING
/* SELECT
country,
COUNT(*) AS n
FROM customers
GROUP BY country
HAVING n >= 5; */

-- ORDER BY sorting data
/* SELECT
firstname,
country
FROM customers
ORDER BY firstname;

SELECT
firstname,
country
FROM customers
ORDER BY firstname DESC;

SELECT
firstname,
country
FROM customers
ORDER BY country, firstname;

SELECT
firstname,
country
FROM customers
ORDER BY 2, 1;

SELECT
firstname,
country
FROM customers
ORDER BY 2 DESC, 1 DESC; */


-- INNERJOIN (syntax)
/*SELECT
artists.artistid,
artists.name,
albums.title
FROM artists
INNER JOIN albums
ON artists.artistid = albums.artistid; 
 
SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid; */

-- LEFT JOIN
/* SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName
FROM artists AS A
LEFT JOIN albums AS B
ON A.artistid = B.artistid; */


/* SELECT
A.artistid,
A.name AS artistName,
B.title AS albumName,
C.name AS trackName,
C.bytes,
C.milliseconds,
C.unitprice
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
INNER JOIN tracks AS C
ON B.albumid = C.albumid
WHERE A.artistid IN (99, 105, 220); */

-- UNION
/* SELECT firstname, lastname, country FROM customers
WHERE country = 'USA'
UNION
SELECT firstname, lastname, country FROM customers
WHERE country = 'United Kingdom'
ORDER BY country;*/

-- create new table using SELECT clause
/* CREATE TABLE t2 AS
SELECT A.*, B.*
FROM artists AS A
INNER JOIN albums AS B
ON A.artistid = B.artistid
WHERE A.artistid < 100; */
-- select all columns from table t2
/* SELECT * FROM t2; */

-- DROP TABLE (delete table)
/* DROP TABLE t1;
DROP TABLE t2; */

-- 2 CASE  codition
/* SELECT
company,
CASE
WHEN company IS NULL THEN 'end customers'
WHEN company IS NOT NULL THEN 'corporate'
END AS segment
FROM customers; 

SELECT
company,
CASE
WHEN company IS NULL THEN 'end customers'
ELSE 'corporate'
END AS segment
FROM customers; */

-- more than 2 CASE  codition
/* SELECT
total,
CASE
WHEN total >= 20 THEN 'high value'
WHEN total >= 10 THEN 'medium value'
ELSE 'low value'
END AS segment
FROM invoices; */

-- CASE with Aggregate Function
-- count each segment
/* SELECT
-- first column using case
CASE
WHEN total >= 20 THEN 'high value'
WHEN total >= 10 THEN 'medium value'
ELSE 'low value'
END AS segment,
-- second column using aggregate function
COUNT(
CASE
WHEN total >= 20 THEN 'high value'
WHEN total >= 10 THEN 'medium value'
ELSE 'low value'
END
) AS n
FROM invoices
GROUP BY 1
ORDER BY 2;  */

-- CASE type Subqueries
-- count numbers of high, medium and low value segments
/* SELECT
segment,
COUNT(segment) AS n
FROM
(SELECT
CASE
WHEN total >= 20 THEN 'high value'
WHEN total >= 10 THEN 'medium value'
ELSE 'low value'
END AS segment
FROM invoices) -- code in parentheses () is called inner subquery
GROUP BY 1
ORDER BY 2;

--  Subquery in WHERE clause with IN
SELECT -- 1 query
customerid,
SUM(total) AS totalSpend
FROM invoices
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

SELECT -- 2 query
customerid,
firstname || ' ' || lastname AS fullName,
address,
country,
email
FROM customers
WHERE customerid IN (6, 26, 57, 45, 46);

SELECT -- 1+2 Subquery in WHERE clause with IN
customerid,
firstname || ' ' || lastname AS fullName,
address,
country,
email
FROM customers
WHERE customerid IN (
SELECT customerid FROM (
SELECT customerid, SUM(total) AS totalSpend
FROM invoices
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5
)
); */

-- Subquery in FROM clause 
/* SELECT customerid FROM (
SELECT customerid, SUM(total) AS totalSpend
FROM invoices
GROUP BY 1
ORDER BY 2 DESC LIMIT 5
);

--- 29-09-2022 15:19:47
--- chinook.db
SELECT firstname, lastname, email
FROM (SELECT * FROM customers WHERE country = 'USA')
ORDER BY lastname LIMIT 5; */

--- 29-09-2022 15:21:40
--- chinook.db
/* SELECT
A.customerid,
A.firstname || ' ' || A.lastname AS fullName,
B.totalSpend
FROM customers A
LEFT JOIN (
SELECT customerid, SUM(total) AS totalSpend
FROM invoices
GROUP BY 1) B
ON A.customerid = B.customerid
ORDER BY 3 DESC; */

-- Subquery in SELECT clause
/* SELECT --1
customerid,
firstname || ' ' || lastname AS fullName
FROM customers;

SELECT -- 2
customerid,
firstname || ' ' || lastname AS fullName,
(SELECT SUM(total) FROM invoices
WHERE customers.customerid = invoices.customerid) AS totalSpend
FROM customers
ORDER BY 3 DESC; */

-- Correlated Subquery
/* SELECT
genreid,
name AS genreName,
(SELECT COUNT(*) FROM tracks
WHERE tracks.genreid = genres.genreid) AS numberOfTracks
FROM genres
ORDER BY 3 DESC; 

-- subquery in join clause
SELECT
A.genreid,
A.name AS genreName,
B.numberOfTracks
FROM genres A
LEFT JOIN (SELECT genreid, COUNT(*) AS numberOfTracks
FROM tracks GROUP BY 1) B
ON A.genreid = B.genreid
ORDER BY 3 DESC; */

-- “Structured” of SQL ห้ามสลับ
/* SELECT
FROM
[JOIN]
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT */






