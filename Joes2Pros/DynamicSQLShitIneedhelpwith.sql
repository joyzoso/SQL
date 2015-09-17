DECLARE @MIN MONEY = 20000
DECLARE @MAX MONEY = 25000
SELECT * FROM [Grant] where Amount between @MIN AND @MAX

---below making it dynamic

DECLARE @SQL NVARCHAR(200)
SET @SQL = 'SELECT * FROM [Grant] where Amount between @MIN AND @MAX'
EXEC sp_ExecuteSql @SQL, N'@MIN MONEY, @MAX MONEY', @MIN = 15000, @MAX = 25000

----exercise skillcheck

DECLARE @ClassTime INT = 12
SELECT * FROM MgmtTraining
WHERE ClassDurationHours > @ClassTime

--now making the above dynamic

DECLARE @SQL NVARCHAR(200)
SET @SQL = 'SELECT * FROM MgmtTraining WHERE ClassDurationHours > @ClassTime'
EXEC sp_ExecuteSql @SQL, N'@ClassTime', @ClassTime = 12

---above need help


---skillcheck2--- also need help

DECLARE @MgrID INT = 11
DECLARE @Pay MONEY = 25000
SELECT em.*, pr.YearlySalary
FROM Employee AS em
INNER JOIN PayRates AS pr
ON em.EmpID = pr.EmpID
WHERE em.ManagerID = @MgrID
AND pr.YearlySalary > @Pay


DECLARE @SQL NVARCHAR(200)
SET @SQL = 'SELECT em.*, pr.YearlySalary
FROM Employee AS em
INNER JOIN PayRates AS pr
ON em.EmpID = pr.EmpID
WHERE em.ManagerID = @MgrID
AND pr.YearlySalary > @Pay'
EXEC sp_ExecuteSql @SQL, N'@MgrID, @Pay', @MgrID = 11, @Pay = 25000
