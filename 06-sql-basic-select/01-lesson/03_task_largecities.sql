-- Bruk city. Hent navn og folketall for svenske byer med mer
-- enn 100 000 innbyggere. Vis byen med størst folketall først.

SELECT Name, Population
FROM city
WHERE CountryCode = 'SWE'
  AND Population > 100000
ORDER BY Population DESC;
