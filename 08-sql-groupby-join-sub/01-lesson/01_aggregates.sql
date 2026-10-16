SELECT SUM(Population) AS total_population,
       AVG(Population) AS avg_population,
       MIN(Population) AS min_population,
       MAX(Population) AS max_population
FROM city
WHERE CountryCode = 'NOR';


SELECT Name, Population / 1000000 AS pop_millions
FROM country
WHERE Population > 10000000
ORDER BY pop_millions DESC;


SELECT Continent,
       COUNT(*) AS country_count,
       SUM(Population) AS population
FROM country
GROUP BY Continent
ORDER BY population DESC;


-- Try commenting out different WHERE and HAVING parts.
SELECT Continent, COUNT(*) AS country_count
FROM country
WHERE Population > 10000000
GROUP BY Continent
HAVING COUNT(*) >= 5
-- HAVING MIN(SurfaceArea) >= 10000
ORDER BY country_count DESC;


-- Suggested solution, 1st lesson-exercise:
SELECT CountryCode,
       COUNT(*) AS city_count,
       AVG(Population) AS avg_population
FROM city
GROUP BY CountryCode
HAVING COUNT(*) >= 20
ORDER BY avg_population DESC;


