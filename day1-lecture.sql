-- Hellow World SQL Query, SELECT ALL records from the actor table
SELECT * 
FROM actor;

-- Query for first_name and last_name in the actor table
SELECT first_name, last_name
FROM actor;

-- Query for a first_name that equals Nick using the WHERE clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for a first_name that is eqal to Nick using the LIKE and WHERE clauses
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- Query for all first_name's that start with an N using the LIKE and WHERE clauses using a WILDCARD character
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'N%';

-- Query for all first_name values that start with K and have 2 letters directly following -- using the underscore character
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__';

-- Query for all first_name values that start with K with two characters directly following, but 
-- including other characters If available -- COMBINE: WILDCARD and the underscore characters
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__%';

-- Comparing operators in SQL:
-- Greater Than (>) --- Less than (<)
-- Greater OR Equal to (<=) -- Less OR Equal To (<=)
-- Not Equal (<>)

-- Explore the data with SELECT ALL Query
SELECT *
FROM payment;

-- Query for data that shows customers who piad
-- an amount that was GREATER than $12
SELECT customer_id, amount
FROM payment
WHERE AMOUNT > 2.00;

-- Query for data that shows custmoers who paid
-- an amount LESS than $7.99
SELECT customer_id, amount
FROM payment
WHERE amount < 7.99;

--Query for adata that shows customers who paid
-- an amount LESS than OR EQUAL to &7.99
SELECT customer_id, amount
FROM payment
WHERE amount <= 7.99;

-- Query for data that shows customers who paid
-- an amount GREATER than or EQUAL to $2.00
-- Doing so in Ascending order
SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00;
ORDER BY amount ASC;

-- Query for data that shows customers who paid 
-- an amount BETWEEN $2.00 and $7.99
-- Using the BETWEEN with the AND clause
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.00 AND 7.99;

-- Query for data that shows customers who paid
-- an amount NOT EQUAL to $0.00
-- Order the results in DESCENDING order
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.0
ORDER BY amount DESC;


-- SQL Aggregations => SUM(), AVG(), COUNT(), MIN(), MAX()

-- Query to display sum of amonuts payed that are greater than $5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the average of amounts payed tah tare greater than $5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the count of amounts payed that are greater than $5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the count of DISTINCT count of amounts payed that are greater than
-- $5.99

SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the lowest amount that is greater than $7.99
SELECT MIN(amount) AS Min_Num_Payments 
FROM payment
WHERE AMOUNT > 7.99;

-- Query to display the highest amount that is greater than 7.99
SELECT MAX(amount) AS Max_Num_Payments
FROM payment
WHERE amount > 7.99;

-- Using the GROUP BY clause 
-- Query to display all amounts above 7.99 (To display what the GROUP BY will do)
SELECT amount
FROM payment
WHERE amount = 7.99;

-- Query to display the count of amounts above 7.99
-- WHILE ALSO displaying the actual amount as well
-- Using the GROUP BY clause to produce the count
SELECT amount, COUNT(amount)
FROM payment
WHERE amount = 7.99
GROUP BY amount
ORDER BY amount;

-- Query to display customer_ids with the summed amounts for each customer
SELECT customer_ID, SUM(amount)
FROM payment
GROUP BY customer_ID
ORDER BY customer_id DESC;

-- Query to display summed amounts for each customer_id
-- This is a separate example...which is very similar to
-- The result given from the previous example
SELECT customer_id, amount
FROM payment
GROUP BY amount, customer_id
ORDER BY customer_id DESC;

-- SQL HAVING clause

-- Query to display customer_ids that show up more than 5 times (if available)
-- Group by the customer's 
SELECT COUNT(customer_id), email
FROM customer
WHERE email LIKE 'j__.w%'
GROUP BY email
HAVING COUNT(customer_id) > 1;
