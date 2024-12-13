-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

SELECT BookID, Title
FROM Books
WHERE Barcode = 4043822646;

SELECT PatronID, FirstName, LastName
FROM Patrons
WHERE Email = 'jvaan@wisdompets.com';


INSERT INTO Loans(BookID, PatronID, LoanDate, DueDate)
VALUES 
  ((SELECT BookID FROM Books WHERE Barcode = 2855934983),
    (SELECT PatronID FROM Patrons WHERE Email = 'jvaan@wisdompets.com'),
    '2022-08-25', '2022-09-08'),
  ((SELECT BookID FROM Books WHERE Barcode = 4043822646),
    (SELECT PatronID FROM Patrons WHERE Email = 'jvaan@wisdompets.com'),
    '2022-08-25', '2022-09-08');


 SELECT b.Title, l.LoanDate, l.DueDate, p.FirstName, p.LastName 
 FROM Books b JOIN Loans l ON b.BookID = l.BookID
    JOIN Patrons p ON l.PatronID = p.PatronID
ORDER BY LoanID DESC
LIMIT 5; 