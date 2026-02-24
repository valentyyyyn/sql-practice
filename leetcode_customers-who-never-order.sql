SELECT name AS customers
FROM Customers -- 1. Evaluates each row of Customers
WHERE NOT EXISTS (
    SELECT customerId
    FROM Orders
    WHERE Orders.customerID = Customers.id
); -- 2. For the current customer, check if any order exists with the same id. If none exist, the row is returned 