-- Question 1
-- STRING_SPLIT to normalize to 1NF

SELECT 
    OrderID,
    CustomerName,
    LTRIM(RTRIM(value)) AS Product
FROM 
    ProductDetail
CROSS APPLY 
    STRING_SPLIT(Products, ',');

-- Question 2
-- Normalisation to 2NF ends with 2 tables extracted from the main table:

--Create the Orders table
SELECT DISTINCT OrderID, CustomerName
INTO Orders
FROM OrderDetails;

-- Create the OrderItems table
SELECT OrderID, Product, Quantity
INTO OrderItems
FROM OrderDetails;
