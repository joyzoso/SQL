USE JProCo

Select * from Employee

---the below will get us the exact same records

DECLARE @SQL NVARCHAR(200) = 'SELECT * FROM Employee'
EXEC (@SQL)

-- as will the below 

DECLARE @spSQL NVARCHAR(200) = 'SELECT * FROM Employee'
EXEC sp_ExecuteSql @spSQL	
-----

SELECT * FROM Employee WHERE Lastname = @EmpLastName

---making the above dynamic


DECLARE @SQL NVARCHAR(200)
SET @SQL = 'SELECT * FROM Employee WHERE Lastname = @EmpLastName'
DECLARE @EmpLastName NVARCHAR(30)
EXEC (@SQL, @EmpLastName = 'Smith')

---utilizing the sp_execute SQL
DECLARE @SQL NVARCHAR(200)
SET @SQL = 'SELECT * FROM Employee WHERE Lastname = @EmpLastName'
EXEC sp_ExecuteSql @SQL, N'@EmpLastName NVARCHAR(50)', @EmpLastName = 'Adams'