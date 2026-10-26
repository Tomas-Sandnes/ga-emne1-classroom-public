-- Create a new user that we can connect to our DB with:
CREATE USER 'city_reader'@'%'
IDENTIFIED BY 'ReadOnly_09!';

-- Allow the new user to query the city table:
GRANT SELECT ON world.city
TO 'city_reader'@'%';

-- Check that it looks ok:
SHOW GRANTS
FOR 'city_reader'@'%';

-- TO check which user we're logged in as.
-- (NOTE: The CONNECTION_ID() part isn't really needed,
-- and it is also not supported by every SQL database.)
SELECT CURRENT_USER(), CONNECTION_ID();

----------------------------------------------------------------

-- While logged in as city_reader, try these statements.
-- (1st statement should succeed, 2nd & 3rd should not.)
SELECT Name, Population
FROM world.city
WHERE CountryCode = 'NOR';

SELECT * FROM world.country;

UPDATE world.city
SET Population = Population
WHERE CountryCode = 'NOR'
  AND Name = 'Oslo';
