USE JProCo

DECLARE @DbName VARCHAR(100)
SET @DbName = 'JProCo'
DECLARE @Date VARCHAR(100) = '2015June18'
DECLARE @Path VARCHAR(100) = '''C:\Joes2Pros\' + @DbName + @Date + '.Bak'''
DECLARE @Command VARCHAR(100) = 'BACKUP DATABASE ' + @DbName + ' TO DISK = ' + @Path
EXEC (@Command)