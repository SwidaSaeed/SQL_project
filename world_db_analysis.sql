/* ======================================================
   SQL Data Analysis Project - world_db
   Author: Swida Saeed
   Description: Complete practical SQL query solutions
   ====================================================== */


/* 1. Count Cities in the USA */
SELECT COUNT(*) AS total_cities
FROM city
WHERE CountryCode = 'USA';


/* 2. Country with Highest Life Expectancy */
SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;


/* 3. Cities Containing "New" */
SELECT *
FROM city
WHERE Name LIKE '%New%';


/* 4. Top 10 Most Populated Cities */
SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 10;


/* 5. Cities with Population Greater Than 2,000,000 */
SELECT *
FROM city
WHERE Population > 2000000;


/* 6. Cities Beginning with 'Be' */
SELECT *
FROM city
WHERE Name LIKE 'Be%';


/* 7. Cities with Population Between 500,000 and 1,000,000 */
SELECT *
FROM city
WHERE Population BETWEEN 500000 AND 1000000;


/* 8. Cities Sorted Alphabetically */
SELECT *
FROM city
ORDER BY Name ASC;


/* 9. Most Populated City */
SELECT *
FROM city
ORDER BY Population DESC
LIMIT 1;


/* 10. City Name Frequency Analysis */
SELECT Name, COUNT(Name) AS city_frequency
FROM city
GROUP BY Name
ORDER BY Name ASC;


/* 11. City with Lowest Population */
SELECT *
FROM city
ORDER BY Population ASC
LIMIT 1;


/* 12. Country with Largest Population */
SELECT *
FROM country
ORDER BY Population DESC
LIMIT 1;


/* 13. Capital of Spain */
SELECT country.Name AS Country,
       country.Capital AS Capital_ID,
       city.Name AS Capital_City
FROM city
INNER JOIN country
ON country.Capital = city.ID
WHERE country.Code = 'ESP';


/* 14. Cities in Europe */
SELECT country.Name AS Country,
       country.Capital AS Capital_ID,
       city.Name AS Capital_City
FROM city
INNER JOIN country
ON country.Capital = city.ID
WHERE country.Continent = 'Europe';


/* 15. Average Population by Country */
SELECT CountryCode,
       AVG(Population) AS avg_population
FROM city
GROUP BY CountryCode;


/* 16. Capital Cities Population Comparison */
SELECT country.Name AS Country,
       city.Name AS Capital,
       city.Population
FROM country
INNER JOIN city
ON country.Capital = city.ID
ORDER BY city.Population DESC;


/* 17. Countries with Low Population Density */
SELECT Name,
       Population,
       SurfaceArea,
       (Population / SurfaceArea) AS population_density
FROM country
WHERE SurfaceArea > 0
ORDER BY population_density ASC
LIMIT 10;


/* 18. Cities in Countries with High GDP per Capita */
SELECT city.Name AS City,
       country.Name AS Country,
       (country.GNP / country.Population) AS gdp_per_capita
FROM city
INNER JOIN country
ON city.CountryCode = country.Code
WHERE country.Population > 0
ORDER BY gdp_per_capita DESC
LIMIT 10;


/* 19. Cities Ranked 31–40 by Population */
SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 10 OFFSET 30;
