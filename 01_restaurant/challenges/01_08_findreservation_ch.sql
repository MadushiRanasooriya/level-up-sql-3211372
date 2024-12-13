-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT 
  c.FirstName, c.LastName, r.Date, r.PartySize
FROM
  Reservations r
INNER JOIN
  Customers c
ON
  r.CustomerID = c.CustomerID
WHERE
  c.LastName LIKE ('St%') AND
  r.PartySize =4 AND strftime('%m-%d', r.Date) = '06-14'; 