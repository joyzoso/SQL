BEGIN TRY
	RAISERROR('Bad Stuff', 16, 1)
END TRY
BEGIN CATCH
	PRINT 'Catch Ran'
	PRINT ERROR_MESSAGE()
	PRINT ERROR_SEVERITY()
END CATCH	

----

BEGIN TRY
	RAISERROR('Kinda Bad Stuff', 10, 1)
END TRY
BEGIN CATCH
	PRINT 'Catch Ran'
	PRINT ERROR_MESSAGE()
	PRINT ERROR_SEVERITY()
END CATCH		

---note: the try runs, but the catch does not run beacuse it will only run if the 
--severity level is above 10	