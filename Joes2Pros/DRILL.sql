USE AdventureWorksLT2008R2

---here
--- joined both tables (left) sharing 'customer' in common
SELECT * 
FROM SalesLT.Customer
LEFT JOIN SalesLT.CustomerAddress
ON SalesLT.Customer.CustomerID = SalesLT.CustomerAddress.CustomerID

----there are multiple 'Liu' for lastname

CREATE PROCEDURE getlastname @LastName Varchar(30) 
AS
SELECT * 
FROM SalesLT.Customer
WHERE LastName = @LastName
GO

EXEC getlastname @LastName = '%'
