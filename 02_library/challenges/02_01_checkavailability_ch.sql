-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT 
 *
FROM
  Books
WHERE
  Title = 'Dracula';


SELECT
  *
FROM
  Loans
WHERE
  BookID IN (SELECT BookID FROM BOOKS  WHERE Title = 'Dracula')
  AND ReturnedDate IS NULL;


SELECT
  count(*) AS [Num of Copies]
FROM
  Books
WHERE
  Title = 'Dracula'
  AND BookID NOT IN (SELECT BookID FROM Loans
                WHERE BookID IN (SELECT BookID FROM Books
                                WHERE Title = 'Dracula')
                  AND ReturnedDate IS NULL);
  
  

