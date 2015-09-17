SELECT * FROM Book
INNER JOIN Book_Copies
ON Book.BookId = Book_Copies.BookId
----Join Book and BookCopies

SELECT * FROM Book_Copies
INNER JOIN Library_Branch
ON Book_Copies.BranchId = Library_Branch.BranchId
---Join Book_Copies and Library Branch

SELECT * FROM Book_Loans
INNER JOIN Library_Branch
ON Book_Loans.BranchId = Library_Branch.BranchId
---Join Book_Loansa and Library Branch


