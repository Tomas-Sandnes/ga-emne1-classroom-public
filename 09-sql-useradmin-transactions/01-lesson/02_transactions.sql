-- Start 2 sessions.
-- A: Our normal user.
-- B: the city_reader user. (Created with the commands in 01_useradmin.sql, above.)

-- Run the following in both sessions:
SELECT Name, Population
FROM world.city
WHERE CountryCode = 'NOR'
  AND Name IN ('Oslo', 'Bergen')
ORDER BY Name;

-- Then, in session A only:
START TRANSACTION;

UPDATE world.city
SET Population = Population - 100000
WHERE CountryCode = 'NOR'
  AND Name = 'Oslo';

UPDATE world.city
SET Population = Population + 100000
WHERE CountryCode = 'NOR'
  AND Name = 'Bergen';

-- In both sessions:
-- (You should see the updated values in A, and starting values in B.)
SELECT Name, Population
FROM world.city
WHERE CountryCode = 'NOR'
  AND Name IN ('Oslo', 'Bergen')
ORDER BY Name;

-- In session A only:
ROLLBACK;

-- In both sessions:
-- (You should now see the starting values in both sessions again.)
SELECT Name, Population
FROM world.city
WHERE CountryCode = 'NOR'
  AND Name IN ('Oslo', 'Bergen')
ORDER BY Name;

-- Do the same drill again, but substitute ROLLBACK in session A at the end with COMMIT.
-- (At the end, you should now see the UPDATED values in both sessions instead.)
COMMIT;

-- To restore our starting values, in session A only, run:
START TRANSACTION;

UPDATE world.city
SET Population = Population + 100000
WHERE CountryCode = 'NOR'
  AND Name = 'Oslo';

UPDATE world.city
SET Population = Population - 100000
WHERE CountryCode = 'NOR'
  AND Name = 'Bergen';

COMMIT;
