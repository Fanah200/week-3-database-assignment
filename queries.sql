-- ==========================================================================
-- WEEK 4 DATABASE ASSIGNMENT: ADVANCED SQL QUERIES AND AGGREGATIONS
-- ==========================================================================

-- QUESTION 1: Daily Payment Aggregations
SELECT 
    paymentDate, 
    SUM(amount) AS totalAmountPaid
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- QUESTION 2: Customer Credit Risk Profiling
SELECT 
    customerName, 
    country, 
    AVG(creditLimit) AS averageCreditLimit
FROM customers
GROUP BY customerName, country;

-- QUESTION 3: Order Details Valuation Matrix
SELECT 
    productCode, 
    quantityOrdered, 
    SUM(quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- QUESTION 4: Peak Transaction Isolation by Instrument
SELECT 
    checkNumber, 
    MAX(amount) AS highestAmountPaid
FROM payments
GROUP BY checkNumber;
