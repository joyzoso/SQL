SELECT * FROM Employee
SELECT * FROM PayRates
GO

CREATE PROC InsertYearlyPay @EmpID INT, @YrSalary MONEY
AS
	BEGIN TRY
		BEGIN TRAN
	INSERT INTO [dbo].[PayRates] (EmpID, YearlySalary, MonthlySalary, HourlyRate, Selector)
	VALUES (@EmpID, @YrSalary, NULL, NULL, 1)
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN
	END CATCH
GO	
				
EXEC InsertYearlyPay 20, 50000		

---???		
				