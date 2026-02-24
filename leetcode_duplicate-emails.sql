SELECT email
FROM Person
GROUP BY email -- 1. Groups rows by email 
HAVING COUNT(email) > 1; -- 2. Returned only emails that appear more than once