SELECT country.Name AS country_name, city.Name AS city_name
FROM city
INNER JOIN country ON city.CountryCode = country.Code
WHERE country.Continent = 'Europe'
ORDER BY country.Name;


SELECT ci.Name AS city_name,
       co.Name AS country_name,
       ci.Population
FROM city AS ci
JOIN country AS co ON ci.CountryCode = co.Code
WHERE co.Continent = 'Europe'
ORDER BY ci.Population ASC;


SELECT country.Name AS country_name,
       city.Name AS capital_name,
       countrylanguage.Language
FROM country
JOIN city ON country.Capital = city.ID
JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE country.Continent = 'Europe'
  AND countrylanguage.IsOfficial = 'T'
ORDER BY country_name ASC;


SELECT country.Name AS country_name,
       city.Name AS city_name
FROM country
LEFT JOIN city ON city.CountryCode = country.Code
ORDER BY country.Name, city.Name;


SELECT country.Name AS country_name,
       city.Name AS city_name
FROM city
RIGHT JOIN country ON city.CountryCode = country.Code
ORDER BY country.Name, city.Name;


-- Suggested solution, 2nd lesson-exercise:
SELECT country.Name, city.Name as capital
FROM country
LEFT JOIN city ON country.Capital = city.ID
ORDER BY country.Name ASC;


SELECT country.Code, country.Name
FROM country
LEFT JOIN city ON city.CountryCode = country.Code
WHERE city.ID IS NULL;


SELECT country.Name, city.Name
FROM country
LEFT JOIN city ON city.CountryCode = country.Code
               AND city.Population > 1000000
ORDER BY country.Name ASC;


