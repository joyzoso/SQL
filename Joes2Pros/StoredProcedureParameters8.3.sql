CREATE PROC GetEmployeesFromSeattle
AS	
	SELECT Emp.Firstname, emp.lastname, Loc.city, Loc.[state]
	FROM Employee AS emp
	INNER JOIN Location AS Loc	
	ON emp.LocationID = Loc.LocationID
	WHERE loc.city = 'Seattle'
	
---making a getemployees from boston procedure
CREATE PROC GetEmployeesFromBoston
AS	
	SELECT Emp.Firstname, emp.lastname, Loc.city, Loc.[state]
	FROM Employee AS emp
	INNER JOIN Location AS Loc	
	ON emp.LocationID = Loc.LocationID
	WHERE loc.city = 'Boston'
	
EXEC GetEmployeesFromBoston

---What if a Philly branch was opening up?
CREATE PROC GetEmployeeByCity @City VARCHAR(50)
AS	
	SELECT Emp.Firstname, emp.lastname, Loc.city, Loc.[state]
	FROM Employee AS emp
	INNER JOIN Location AS Loc	
	ON emp.LocationID = Loc.LocationID
	WHERE loc.city = @City
	
EXEC GetEmployeeByCity 'Tampa'	


---Setting the parameter up as a default value

ALTER PROC GetEmployeeByCity @City VARCHAR(50)= 'Seattle'
AS	
	SELECT Emp.Firstname, emp.lastname, Loc.city, Loc.[state]
	FROM Employee AS emp
	INNER JOIN Location AS Loc	
	ON emp.LocationID = Loc.LocationID
	WHERE loc.city = @City
	
EXEC GetEmployeeByCity


---- lab 8.3
USE JProCo

CREATE PROC GetProductListByCategory @Category VARCHAR(50)='No-Stay'
AS	
	SELECT ProductId, ProductName, RetailPrice
	FROM CurrentProducts
	WHERE Category = @Category
	EXEC GetProductListByCategory