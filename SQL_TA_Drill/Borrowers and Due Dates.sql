USE LibraryMgmtSystem
SELECT * FROM Book

SELECT * FROM Borrower

SELECT * FROM Book_Loans

---There are at least 8 borrowers in the BORROWER table, and at least 2 of those borrowers have more
---than 5 books loaned to them.

SELECT * FROM Book_Loans
INSERT Book_Loans (BookId, BranchId, CardNo, DateOut, DueDate)
VALUES (1,3,4,'July 02, 2015', 'July 15, 2015'),
(3, 3, 4, 'July 02, 2015', 'July 15, 2015'),
(2, 3, 4, 'July 02, 2015', 'July 16, 2015'),
(4, 3, 4, 'July 02, 2015', 'July 16, 2015'),
(10, 3, 4, 'July 02, 2015', 'July 16, 2015'),
(12, 3, 4, 'July 02 2015', 'July 17, 2015'),
(9, 2, 8, 'July 01, 2015', 'August 01, 2015'),
(8, 2, 8, 'July 04, 2015', 'August 04, 2015'),
(7, 2, 8, 'July 04, 2015', 'August 04, 2015'),
(6, 2, 8, 'July 01, 2015', 'August 01, 2015'),
(19, 2, 8, 'July 01, 2015', 'August 01, 2015'),
(17, 2, 8, 'July 04, 2015', 'August 04, 2015');

---adding more loans (50 total) here

INSERT INTO Book_Loans (BookId, BranchId, CardNo, DateOut,DueDate)
VALUES (15, 1, NULL, NULL, NULL),
(15, 1, NULL, NULL, NULL),(15, 1, NULL, NULL, NULL),(15, 1, NULL, NULL, NULL),(15, 1, NULL, NULL, NULL),(15, 1, NULL, NULL, NULL),(15, 1, NULL, NULL, NULL),
(15, 1, NULL, NULL, NULL),(15, 1, NULL, NULL, NULL),(15, 1, NULL, NULL, NULL),(15, 1, NULL, NULL, NULL),(15, 1, NULL, NULL, NULL),
(15, 1, NULL, NULL, NULL),(15, 1, NULL, NULL, NULL),(15, 1, NULL, NULL, NULL),
(20, 2, NULL, NULL, NULL),(20, 2, NULL, NULL, NULL), (20, 2, NULL, NULL, NULL), (20, 2, NULL, NULL, NULL), (20, 2, NULL, NULL, NULL), (20, 2, NULL, NULL, NULL),
(20, 2, NULL, NULL, NULL), (20, 2, NULL, NULL, NULL), (20, 2, NULL, NULL, NULL), (20, 2, NULL, NULL, NULL), (20, 2, NULL, NULL, NULL), (20, 2, NULL, NULL, NULL),
(20, 2, NULL, NULL, NULL), (20, 2, NULL, NULL, NULL), (20, 2, NULL, NULL, NULL), (20, 2, NULL, NULL, NULL),
(17, 3, NULL, NULL, NULL),(17, 3, NULL, NULL, NULL), (17, 3, NULL, NULL, NULL), (17, 3, NULL, NULL, NULL), (17, 3, NULL, NULL, NULL), (17, 3, NULL, NULL, NULL),
(17, 3, NULL, NULL, NULL), (17, 3, NULL, NULL, NULL), (17, 3, NULL, NULL, NULL), (17, 3, NULL, NULL, NULL), (17, 3, NULL, NULL, NULL), (17, 3, NULL, NULL, NULL),
(17, 3, NULL, NULL, NULL), (17, 3, NULL, NULL, NULL), (17, 3, NULL, NULL, NULL), (17, 3, NULL, NULL, NULL), 
(11, 4, NULL, NULL, NULL), (11, 4, NULL, NULL, NULL), (11, 4, NULL, NULL, NULL), (11, 4, NULL, NULL, NULL), (11, 4, NULL, NULL, NULL), (11, 4, NULL, NULL, NULL),
(11, 4, NULL, NULL, NULL), (11, 4, NULL, NULL, NULL), (11, 4, NULL, NULL, NULL), (11, 4, NULL, NULL, NULL), (11, 4, NULL, NULL, NULL), (11, 4, NULL, NULL, NULL),
(11, 4, NULL, NULL, NULL), (11, 4, NULL, NULL, NULL), (11, 4, NULL, NULL, NULL), (11, 4, NULL, NULL, NULL);