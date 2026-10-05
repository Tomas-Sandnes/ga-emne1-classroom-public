-- Alle spørringer fra slides som IKKE er del av de 3 oppgavene.
-- (Svar på oppgavene ligger i hver sin separate sql-fil.)

SELECT Name, Population
FROM city;

SELECT Name, Population
FROM city
WHERE CountryCode = 'NOR';

SELECT Name, Population
FROM city
WHERE Population > 1000000;

SELECT Name, Population
FROM city
WHERE CountryCode = 'NOR'
  AND Population > 200000;

SELECT Name, CountryCode
FROM city
WHERE (CountryCode = 'NOR'
       OR CountryCode = 'SWE')
  AND Population > 200000;

SELECT Name, Population
FROM city
WHERE CountryCode = 'NOR'
ORDER BY Population DESC;

SELECT Name, Population
FROM city
ORDER BY Population DESC, ID ASC
LIMIT 5;

SELECT Name
FROM country
WHERE Name LIKE 'N%'
ORDER BY Name;

SELECT Name, CountryCode
FROM city
WHERE CountryCode IN
      ('NOR', 'SWE', 'DNK')
ORDER BY CountryCode, Name;

SELECT Name, IndepYear
FROM country
WHERE IndepYear IS NULL;

SELECT COUNT(*) AS CityCount
FROM city
WHERE CountryCode = 'NOR';
