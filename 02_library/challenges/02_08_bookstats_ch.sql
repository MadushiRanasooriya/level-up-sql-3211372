-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT
  Published AS [Published Year], 
  count(DISTINCT Title) AS [Num of Books Published]
FROM
  Books
GROUP BY
  Published
ORDER BY
  [Num of Books Published] DESC;


SELECT
  b.Title,
  count(b.Title) AS [Loan Count]
FROM
  Loans l JOIN Books b ON l.BookID = b.BookID
GROUP BY
  b.Title
ORDER BY
  [Loan Count] DESC
LIMIT 5;