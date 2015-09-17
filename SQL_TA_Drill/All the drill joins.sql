USE LibraryMgmtSystem

SELECT * FROM Book INNER JOIN Book_Authors
ON Book.BookId = Book_Authors.BookId


SELECT * FROM Book INNER JOIN Book_Copies
ON Book.BookId = Book_Copies. BookId

SELECT * FROM Book INNER JOIN Book_Loans
ON book.BookId = Book_Loans.BookId

SELECT * FROM Publisher INNER JOIN Book
ON Publisher.Name = Book.PublisherName

SELECT * FROM Library_Branch INNER JOIN Book_Copies
ON Library_Branch.BranchId = Book_Copies.BranchId
	 
SELECT * FROM Library_Branch INNER JOIN Book_Loans
ON Library_Branch.BranchId = Book_Loans.BranchId

SELECT * FROM Borrower INNER JOIN Book_Loans
ON Borrower.CardNo = Book_Loans.CardNo



