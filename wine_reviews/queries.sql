-- write your queries underneath each number:
 
-- 1. the total number of rows in the database
SELECT COUNT(*) FROM reviews;

-- 2. show the first 15 rows, but only display 3 columns (your choice)
SELECT country, points, winery FROM reviews LIMIT 15;

-- 3. do the same as above, but chose a column to sort on, and sort in descending order
SELECT country, points, winery FROM reviews ORDER BY points DESC LIMIT 15;

-- 4. add a new column without a default value
ALTER TABLE reviews 
ADD COLUMN simplified_points INT;

-- 5. set the value of that new column
UPDATE reviews SET simplified_points = 9 WHERE points>90;
UPDATE reviews SET simplified_points = 8 WHERE points<90;

-- 6. show only the unique (non duplicates) of a column of your choice
SELECT id_number FROM reviews 
LIMIT 10; -- You may delete this limit

-- 7.group rows together by a column value (your choice) and use an aggregate function to calculate something about that group
SELECT SUM(points) AS point_sum, country FROM reviews 
GROUP BY country;

-- 8. now, using the same grouping query or creating another one, find a way to filter the query results based on the values for the groups
SELECT SUM(points) AS point_sum, country
FROM reviews 
GROUP BY country
HAVING country = 'US' OR country = 'Italy' OR country = 'Spain';

-- 9. What are the 10 wineries with the lowest point?
SELECT winery, points FROM reviews ORDER BY points ASC LIMIT 10;

-- 10. What are the top 10 wineries (those with the highest point)?
SELECT winery, points FROM reviews ORDER BY points DESC LIMIT 10;

-- 11. What is the average point of reviews from California?
SELECT AVG(points) AS California_Average FROM reviews WHERE province = 'California';

-- 12. What are the varieties of winery Heitz?
SELECT variety,winery FROM reviews WHERE winery = 'Heitz';