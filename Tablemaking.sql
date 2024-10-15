CREATE TABLE IF NOT EXISTS Salesman(
Salesman_ID TEXT PRIMARY KEY,
Name TEXT,
City TEXT,
Commission TEXT
);

INSERT INTO Salesman(Salesman_ID, Name, City, Commission)VALUES
('1005', 'Lily', 'New York', '0.29'),
('1004', 'Rubert', 'Tokyo', '0.28'),
('1003', 'Jenny', 'London', '0.27'),
('1002', 'Liam', 'Las Vegas', '0.26'),
('1001', 'Sofia', 'Madagascar', '0.25'),
('1000', 'Zeph', 'Florida', '0.24');

CREATE TABLE IF NOT EXISTS Customer(
Customer_ID TEXT,
Cust_name TEXT PRIMARY KEY,
City TEXT,
Grade TEXT,
Salesman_ID TEXT
);

INSERT INTO Customer (Customer_ID, Cust_name, City, Grade, Salesman_ID)VALUES
('2005', 'William', 'New York', '300','1005'),
('2004', 'Sara', 'Paris', '300','1004'),
('2003', 'Leo', 'Chester', '300','1003'),
('2002', 'John', 'Marion', '300','1002'),
('2001', 'Ritana', 'Washington DC', '300','1001'),
('2000', 'Zara', 'Franklin', '300','1000');

CREATE TABLE IF NOT EXISTS Orders(
Order_No TEXT PRIMARY KEY,
Order_cost TEXT,
Oder_EXPdate DATE,
Cust_name TEXT,
Salesman_ID TEXT
);

INSERT INTO Orders(Order_No, Order_cost, Oder_EXPdate, Cust_name, Salesman_ID)VALUES
('56', '280', 2028-11-02, '300','1005'),
('86', '200', 2030-10-08, '300','1004'),
('102', '250', 2025-06-26, '300','1003'),
('132', '350', 3000-12-30, '300','1002'),
('146', '670', 2027-09-05, '300','1001'),
('188', '210', 2026-07-17, '300','1000');

SELECT Customer.Cust_name, Salesman.Name, Salesman.City 
FROM Customer JOIN Salesman ON Customer.City = Salesman.City;

SELECT Customer.Cust_name, Salesman.Name
FROM Customer JOIN Salesman ON Customer.Salesman_ID = Salesman.Salesman_ID;