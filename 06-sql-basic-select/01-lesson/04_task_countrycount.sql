-- Bruk country. Tell land i Europa med mer enn 5 millioner
-- innbyggere. Kall resultatkolonnen CountryCount.

SELECT COUNT(*) AS CountryCount
FROM country
WHERE Continent = 'Europe'
  AND Population > 5000000;
