/*SELECT ALL records from table Customers.*/
SELECT * FROM customers;


/*SELECT records only from the name column in the Customers table.*/
SELECT firstname FROM customers;


/*Show the name of the Customer whose CustomerID is 1.*/
SELECT firstname FROM customers WHERE customerid = 1;


/*UPDATE the record for CustomerID = 1 on the Customer table so that the name is “Lerato Mabitso”.*/
UPDATE customers SET firstname = 'Lerato', lastname = 'Mabitso' WHERE customerid = 1;


/*DELETE the record from the Customers table for customer 2 (CustomerID = 2).*/
DELETE FROM customers WHERE customerid = 2;


/*Select all unique statuses from the Orders table and get a count of the number of orders for each unique status*/
SELECT COUNT(DISTINCT status) FROM orders;


/*Return the MAXIMUM payment made on the PAYMENTS table*/
SELECT MAX (amount) FROM payments;


/*Select all customers from the “Customers” table, sorted by the “Country” column.*/
SELECT * FROM customers ORDER BY country;


/*Select all products with a price BETWEEN R100 and R600.*/
SELECT * FROM products WHERE buyprice BETWEEN 100 AND 600;


/*Select all fields from “Customers” where country is “Germany” AND city is “Berlin”.*/
SELECT * FROM customers WHERE country = 'Germany'AND city = 'Berlin';


/*Select all fields from “Customers” where city is “Cape Town” OR “Durban”.*/
SELECT * FROM customers WHERE city = 'Cape Town'OR city = 'Durban';


/*Select all records from Products where the Price is GREATER than R500.*/
SELECT * FROM products WHERE buyprice > 500;


/*Return the sum of the Amounts on the Payments table.*/
SELECT SUM(amount) FROM payments;


/*Count the number of shipped orders in the Orders table.*/
SELECT COUNT(status) FROM orders WHERE status = 'Shipped';


/*Return the average price of all Products, in Rands and in Dollars (assume the exchange rate is R12 to the Dollar).*/
SELECT AVG (buyprice) FROM products;
SELECT AVG (buyprice * 12) FROM products;


/*Using INNER JOIN create a query that selects all Payments with Customer information.*/
SELECT payments.paymentid,customers.firstname FROM payments
INNER JOIN customers ON payments.paymentid = customers.customerid;


/*Select all products that have turnable front wheels.*/
SELECT * FROM products WHERE description LIKE 'Turnable front wheels%';
