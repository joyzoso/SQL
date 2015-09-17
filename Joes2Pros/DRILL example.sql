CREATE PROCEDURE dumb @LastName Varchar(30) 
AS
SELECT * 
FROM SalesLT.Customer
WHERE LastName = @LastName
GO

EXEC dumb @LastName = 'Liu'