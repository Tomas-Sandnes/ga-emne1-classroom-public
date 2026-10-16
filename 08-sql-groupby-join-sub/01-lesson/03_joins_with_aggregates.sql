SELECT country.Code,
       country.Name,
       COUNT(city.ID) AS city_count
FROM country
LEFT JOIN city ON city.CountryCode = country.Code
GROUP BY country.Code, country.Name
ORDER BY city_count DESC;


SELECT country.Code,
       country.Name,
       COALESCE(SUM(city.Population), 0) AS sum_city_pop
FROM country
LEFT JOIN city ON city.CountryCode = country.Code
GROUP BY country.Code, country.Name
ORDER BY sum_city_pop DESC;


