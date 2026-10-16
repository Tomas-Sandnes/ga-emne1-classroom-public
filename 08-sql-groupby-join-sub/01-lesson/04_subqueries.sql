SELECT Name, Population
FROM city
WHERE Population > (
  SELECT AVG(Population)
  FROM city
)
ORDER BY Population DESC;


SELECT Code, Name
FROM country
WHERE Code IN (
  SELECT CountryCode
  FROM city
  WHERE Population >= 1000000
)
ORDER BY Name;


