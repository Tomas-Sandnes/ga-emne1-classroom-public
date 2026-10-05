-- Bruk city. Hent navn og folketall for byer i Sverige.
-- Landkoden er SWE. Skriv spørringen selv og kjør den.

SELECT Name, Population
FROM city
WHERE CountryCode = 'SWE';
