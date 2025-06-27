CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    Sales INT
);


INSERT INTO Products (ProductID, ProductName, Category, Price, Sales) VALUES
(1, 'Laptop', 'Electronics', 55000.00, 1200),
(2, 'Smartphone', 'Electronics', 20000.00, 3000),
(3, 'Desk Chair', 'Furniture', 5000.00, 800),
(4, 'Dining Table', 'Furniture', 15000.00, 700),
(5, 'Notebook', 'Stationery', 50.00, 5000),
(6, 'Pen', 'Stationery', 10.00, 10000),
(7, 'Headphones', 'Electronics', 2500.00, 1500),
(8, 'Bookshelf', 'Furniture', 8000.00, 300);

SELECT 
    Category,                              -- Group data by Category
    SUM(Sales) AS TotalSales,             -- Total sales per category
    AVG(Price) AS AveragePrice,           -- Average price per category
    COUNT(*) AS NumberOfProducts           -- Number of products in each category
FROM 
    Products
GROUP BY 
    Category
HAVING 
    SUM(Sales) > 5000;                    -- Filter groups where total sales > 5000
     
