/* 
1- from “orderdetails” table.
 Write a query to get all order numbers
(without repetition) that contain 
any product starting with code S18 and price more than 100.
 */

SELECT DISTINCT(orderNumber) , productCode , priceEach FROM orderdetails 
WHERE productCode  LIKE ('s18%') AND priceEach > 100 
GROUP BY orderNumber;


/*
2- from “payments” table. Write a query to get all payments that were made on day 5 or 6 (whatever
 month or year).

*/

SELECT amount , paymentDate FROM payments WHERE paymentDate LIKE ('%-%-05')


/*
3-
 from “customers” table. Write a query to get the fifth-highest credit limit of the customers
 who (live in the USA and their phone number contains 5555).
*/

SELECT customerName,creditLimit,country,phone FROM customers 

WHERE country  = 'usa' AND phone LIKE ('%5555%')

ORDER BY creditLimit DESC LIMIT 1 OFFSET 4 