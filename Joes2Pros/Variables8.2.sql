USE JProCo

DECLARE @FirstName VarChar(20)
DECLARE @LastName VarChar (30)

SET @FirstName = 'John'
SET @LastName = 'Smith'

SELECT @FirstName, @LastName

/****8.2 Variables****/
DECLARE @MaxPrice INT
SET @MaxPrice = 1000

---SELECT @MaxPrice

SELECT *
FROM CurrentProducts
WHERE RetailPrice > 500

----another example---


SELECT *
FROM CurrentProducts
WHERE RetailPrice BETWEEN 900 AND 1000


---now we are going to replace those numbers with variables
DECLARE @MinPrice INT
SET @MinPrice = 900
DECLARE @MaxPrice INT
SET @MaxPrice = 1000

SELECT *
FROM CurrentProducts
WHERE RetailPrice BETWEEN @MinPrice AND @MaxPrice

---now how many products are between 50 and 75?
DECLARE @MinPrice INT
SET @MinPrice = 50
DECLARE @MaxPrice INT
SET @MaxPrice = 75

SELECT *
FROM CurrentProducts
WHERE RetailPrice BETWEEN @MinPrice AND @MaxPrice

---Skill Check 1 Lab8.2
USE JProCo
SELECT * 
FROM [Grant]

DECLARE @MinGrant INT 
SET @MinGrant = 20000
DECLARE @MaxGrant INT
SET @MaxGrant = 40000

SELECT * 
FROM [Grant]
WHERE Amount BETWEEN 20000 AND 40000