-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT p.Email, p.FirstName, count(*) AS BorrowedBooksCount
FROM Loans l JOIN Patrons p ON l.PatronID = p.PatronID
GROUP BY l.PatronID
ORDER BY BorrowedBooksCount
LIMIT 5;