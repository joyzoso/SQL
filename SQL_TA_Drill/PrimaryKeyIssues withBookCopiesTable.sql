SELECT * FROM Book_Copies

----need help here
INSERT INTO Book_Copies (BookId, BranchId, No_Of_Copies)
VALUES (1, 1, 2),
(2, 1, 2),
(3, 1, 2),(4, 1, 2),(5, 1, 2),(6, 1, 2),(7, 1, 2),
(8, 1, 2),(9, 1, 2),(10, 1, 2);
----
INSERT INTO Book_Copies (BookId, BranchId, No_Of_Copies)
VALUES (11, 2, 2),
(12, 2, 2),
(13, 2, 2),(14, 2, 2),(15, 2, 2),(16, 2, 2),(17, 2, 2),
(18, 2, 2),(19, 2, 2),(20, 2, 2);
----above OK

INSERT INTO Book_Copies (BookId, BranchId, No_Of_Copies)
VALUES (1, 3, 2),
(2, 3, 2),
(3, 3, 2),(4, 3, 2),(5, 3, 2),(6, 3, 2),(7, 3, 2),
(8, 3, 2),(9, 3, 2),(10, 3, 2);
----
INSERT INTO Book_Copies (BookId, BranchId, No_Of_Copies)
VALUES (1, 4, 2),
(2, 4, 2),
(3, 4, 2),(4, 4, 2),(5, 4, 2),(6, 4, 2),(7, 4, 2),
(8, 4, 2),(9, 4, 2),(10, 4, 2);
