SELECT * FROM Borrower
SELECT * FROM Book_Loans
SELECT * FROM Book_Copies
SELECT * FROM Library_Branch
SELECT * FROM Book
SeLECT * FROM Publisher
select * FROM Book_Authors

SELECT * FROM Book_Loans INNER JOIN Borrower
ON Book_Loans.CardNo = Borrower.CardNo
WHERE borrower.CardNo IS NULL

UPDATE Book_Loans
SET DueDate = 'June 18, 2015'
WHERE BookId = '17'