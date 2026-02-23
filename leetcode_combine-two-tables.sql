SELECT Person.lastName, Person.firstName, Address.city, Address.state -- 1. Select the required columns
FROM Person
LEFT JOIN Address -- 2. Return all rows from Person and the rows from Address that match on personId
ON Person.personId = Address.personId;