8.3 Skill Check 2	
	
	CREATE PROC GetGrantsByEmployee @LastName VARCHAR(50)= 'Lonning'
	AS
		SELECT G.GrantName, G.Amount, Emp.Firstname, Emp.lastname
		FROM [Grant] AS G
		INNER JOIN Employee AS Emp	
		ON G.EmpID = Emp.EmpID
		WHERE Emp.lastname = @LastName
	EXEC GetGrantsByEmployee