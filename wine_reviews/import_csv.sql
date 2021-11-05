-- write your COPY statement to import a csv here

COPY reviews (id_number, country, description, designation, points, price, province ,region_1, region_2, variety, winery) 
FROM '/Users/anniezheng/Desktop/ANNIZHENG-homework05/data/wine_reviews.csv'
DELIMITER ','
CSV HEADER
NULL AS 'N/A';