-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT
  count(o.OrderID) AS [Num of Orders], c.FirstName, c.LastName, c.Email
FROM
  Customers c
JOIN
  Orders o
ON
  c.CustomerID = o.CustomerID
GROUP BY
  c.CustomerID
ORDER BY
  [Num of Orders] DESC
LIMIT 15;

SELECT
  count(o.OrderID) AS [Num of Orders], c.FirstName, c.LastName, c.Email
FROM
  Customers c
JOIN
  Orders o
ON
  c.CustomerID = o.CustomerID
GROUP BY
  c.CustomerID
ORDER BY
  [Num of Orders] DESC
LIMIT 6;