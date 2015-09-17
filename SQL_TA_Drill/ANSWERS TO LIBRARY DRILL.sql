--DONE--#1 How many copies of the book titled The Lost Tribe are owned by the library branch whose name
---is "Sharpstown"?
CREATE PROCEDURE getanswerone
AS


SELECT Title, No_Of_Copies, BranchName
FROM Book
INNER JOIN Book_Copies AS Copy 
ON Book.BookId = Copy.BookId
INNER JOIN Library_Branch AS Branch
ON Copy.BranchId = Branch.BranchId
WHERE Title = 'The Lost Tribe' 
AND BranchName = 'Sharpstown'

EXECUTE getanswerone



--DONE--#2 How many copies of the book titled The Lost Tribe are owned by each library branch?

CREATE PROCEDURE  getanswertwo
AS

SELECT Title, BranchName, No_Of_Copies
FROM Book 
INNER JOIN Book_Copies AS Copy ON Book.BookId = Copy.BookId
INNER JOIN Library_Branch AS Branch ON Branch.BranchId = Copy.BranchId
WHERE Title = 'The Lost Tribe'

EXECUTE getanswertwo

--DONE--#3 Retrieve the names of all borrowers who do not have any books checked out.
CREATE PROCEDURE getanswerthree
AS

SELECT borrower.Name, loan.CardNo
FROM Book_Loans AS Loan RIGHT JOIN Borrower 
ON Loan.CardNo = Borrower.CardNo 
WHERE loan.CardNo IS NULL

EXECUTE getanswerthree



--DONE--#4 For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today,
---retrieve the book title, the borrower's name, and the borrower's address.
CREATE PROCEDURE getanswerfour
AS

SELECT Title, Name, Borrower.[Address]  
FROM Book
INNER JOIN Book_Loans AS Loan
ON Book.BookId = Loan.BookId
INNER JOIN Borrower
ON loan.CardNo = Borrower.CardNo
INNER JOIN Library_Branch AS Branch
ON loan.BranchId = Branch.BranchId
WHERE BranchName = 'Central' AND DueDate = '2015-06-18'

EXECUTE getanswerfour


UPDATE Book_Loans
SET DueDate = 'June 18, 2015'
WHERE BookId = '17'


--DONE--#5 For each library branch, retrieve the branch name and the total number of books loaned out from
---that branch.
CREATE PROCEDURE getanswerfive
AS

SELECT Branch.BranchName, COUNT (No_of_copies) AS Total_Copies
FROM Book_Copies AS Copy INNER JOIN Library_Branch AS Branch
ON Copy.BranchId = Branch.BranchId
INNER JOIN Book_Loans AS Loan
ON Branch.BranchId = Loan.BranchId
GROUP BY Branch.BranchName

EXECUTE getanswerfive

----where clause will not work, must us group by, NOTE total copies alias


--DONE--#6 Retrieve the names, addresses, and number of books checked out for all borrowers who have more
-----than five books checked out.
CREATE PROCEDURE getanswersix
AS

SELECT Name, Address, loan.CardNo
FROM Borrower INNER JOIN Book_Loans AS Loan
ON Borrower.CardNo = Loan.CardNo
WHERE Borrower.CardNo > 5
 
EXECUTE getanswersix

--DONE--#7 For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of
---copies owned by the library branch whose name is "Central"
CREATE PROCEDURE getanswerseven
AS

SELECT AuthorName, Book.Title, No_Of_Copies
FROM Book INNER JOIN Book_Authors AS Author
ON Book.BookId = Author.BookId
INNER JOIN Book_Copies AS Copy
ON Book. BookId = Copy.BookId
INNER JOIN Library_Branch AS Branch
ON Copy.BranchId = Branch.BranchId
WHERE AuthorName = 'George Orwell' AND Branch.BranchName = 'Westside'

EXECUTE getanswerseven