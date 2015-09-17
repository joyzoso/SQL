/*
** Joes2Pros.com 2009
** All Rights Reserved.
*/

---Code for Lab 9.2 Table Hints
/*Make sure you are using the JProCo database*/

--Skill Check 1:

--Put this code in the first query window and run
BEGIN TRAN

UPDATE [Grant]
SET Amount = 1

WAITFOR DELAY '00:03:00'

ROLLBACK TRAN

--Put this code in the second query window and run
SELECT *
FROM [Grant] (Nolock)