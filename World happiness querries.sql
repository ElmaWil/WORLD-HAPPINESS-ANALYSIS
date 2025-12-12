--1. Top 10 Happiest Countries Across all Years
SELECT Country, Year, Score
FROM happiness
ORDER BY Score DESC
LIMIT 10;

--2.  Average Happiness Score per Year
SELECT Year, AVG(Score) AS Avg_Score
FROM happiness
GROUP BY Year
ORDER BY Year;

--3. Top 10 Countries with Highest Social Support
SELECT Country, Year, Social_Support
FROM happiness
ORDER BY Social_Support DESC
LIMIT 10;

--4. Top 10 Countries by GDP per Capita
SELECT Country, Year, GDP_per_Capita
FROM happiness
ORDER BY GDP_per_Capita DESC
LIMIT 10;

--5. Average Happiness Score by Region
SELECT Region, AVG(Score) AS Avg_Score
FROM happiness
WHERE Region IS NOT NULL
GROUP BY Region
ORDER BY Avg_Score DESC

--6. Average Generosity Score for each Region in 2018
SELECT Region, AVG(Generosity) as Avg_Generosity
FROM happiness
WHERE Year = 2018 IS NOT NULL
GROUP BY Region
ORDER BY Avg_Generosity DESC;

--7. Average Happiness Score per Country (Overall Ranking)
SELECT Country, AVG(Score) AS Avg_Score
FROM happiness
GROUP BY Country 
ORDER BY Avg_Score DESC
LIMIT 20;

--8. Top 5 Countries with Lowest Corruption
SELECT Country, Year, Perceptions_of_Corruption
FROM happiness
WHERE Perceptions_of_Corruption IS NOT NULL
ORDER BY Perceptions_of_Corruption ASC
LIMIT 5;

--9. Top 10 Most Generous Countries Over All Years
SELECT Country,AVG(Generosity) AS Avg_Generosity
FROM happiness
GROUP BY Country
ORDER BY Avg_Generosity DESC
LIMIT 10;

--10.Get Country’s Happiness Trend Over All Years
Example: Ethiopia
SELECT Year, Score
FROM happiness
WHERE Country = 'Ethiopia'
ORDER BY Year

--11. Rank Countries by Happiness Score in a Specific Year
Example for 20I6:
SELECT Country, Score
FROM happiness
WHERE Year = 2016
ORDER BY Score DESC;



