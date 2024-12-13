-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT
  CustomerID, FirstName, LastName, FavoriteDish
FROM
  Customers
WHERE
  FirstName = 'Cleo' AND LastName = 'Goldwater';


SELECT
  DishID, Name
FROM
  Dishes
WHERE
  Name = 'Quinoa Salmon Salad';


UPDATE Customers
SET 
  FavoriteDish = (SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad')
WHERE
  CustomerID = (SELECT CustomerID FROM Customers
                WHERE FirstName = 'Cleo' AND LastName = 'Goldwater')