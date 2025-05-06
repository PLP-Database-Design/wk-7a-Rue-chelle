
 --  Question 1
CREATE TABLE ProductDetail (
    OrderID INT,
    CustomerName VARCHAR(100),
    Products VARCHAR(100)
);
INSERT INTO ProductDetail(OrderID, CustomerName, Products)
VALUES
(01, 'Themba Moyo', 'Laptop'),
(01, 'Themba Moyo', 'Mouse'),
(02, 'Ruth Ndlovu', 'Tablet'),
(02, 'Ruth Ndlovu', 'Keyboard'),
(02, 'Ruth Ndlovu', 'Mouse'),
(03, 'Kelly Tom', 'Phone');
-- Question 2
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);
INSERT INTO Orders (OrderID, CustomerName)
VALUES
(01, 'Themba Moyo'),
(02, 'Ruth Ndlovu'),
(03, 'Kelly Tom');


CREATE TABLE Product (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
INSERT INTO Product (OrderID, Product, Quantity)
VALUES
(01, 'Laptop', 2),
(01, 'Mouse', 1),
(02, 'Tablet', 3),
(02, 'Keyboard', 1),
(02, 'Mouse', 2),
(03, 'Phone', 1);

