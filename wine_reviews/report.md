# Overview

Columns: id_number, country, description, designation, points, price, province, region_1, region_2, variety, winery

Expected Types of Each Column: INT, VARCHAR, VARCHAR, VARCHAR, VARCHAR, INT, INT (changed to VARCHAR), VARCHAR, VARCHAR, VARCHAR, VARCHAR, VARCHAR

Author: zackthoutt

Source: https://www.kaggle.com/zynicide/wine-reviews

Source (Where data is scrapped from): https://www.winemag.com/?s=&drink_type=wine

File Type: CSV

Size: 49.7 MB

License: CC BY-NC-SA 4.0

What it contains: It contains reviews of wine from reviewers of different countries.

# Table Design

id_number INT PRIMARY KEY
I do not allow NULL and duplicates in id_number because it is the only way to identify bewteen each review. So, I set it to be a PRIMARY_KEY.

country VARCHAR,
I allow NULL in country column since there are missing data (the review can be designed to be anonymous). There is no word limit in the review column for simplicity (though I do think that there is a limit when one is writing review).

description VARCHAR,
I allow NULL in description because there is a potential that description is missing too and as demonstrated above, for simplicity, I do not set a VARCHAR limit for description. 

designation VARCHAR,
I allow NULL in designation because there is a potential that designation is missing too, and as demonstrated above, for simplicity, I do not set a VARCHAR limit for designation.

points INT,
I do not allow NULL in points because points are of type INT and it does not make sense to have NULL point. Moreover, this is a review service so points must be present.

price VARCHAR(10),
I allow price to contain NULL since there are missing data. Also, it makes sense that some reviewers cannot find price of that wine.

province VARCHAR(50),
I do allow NULL in province since there are missing data and this survey can be designed to be filled anonymously. Howevery, I limit it to be 50 characters because I do not think a place would have name with more than 50 characters. 

region_1 VARCHAR(50),
I do allow NULL in region_1 since there are missing data and this survey can be designed to be filled anonymously. Howevery, I limit it to be 50 characters because I do not think a place would have name with more than 50 characters. 

region_2 VARCHAR(50),
I do allow NULL in region_2 since there are missing data and this survey can be designed to be filled anonymously. Howevery, I limit it to be 50 characters because I do not think a place would have name with more than 50 characters. 

variety VARCHAR(50),
I do allow NULL in variety since there are missing data and this survey can be designed to be filled anonymously. I also limit it to 50 characters because it doesn't make sense to have a long variety. 

winery VARCHAR
I do not allow NULL in winery for having the logic that a review is written for a wine in winery. 

# Import
1. price's original INT type does not accept empty value
Solution 1: price column is changed to type VARCHAR(10)

2. number of description characters exceeds the limit of VARCHAR(200)
Solution 2: description column is changed to type VARCHAR to record unlimited number of character

3. number of country characters exceeds the limit of VARCHAR(200)
Solution 3: country column is changed to type VARCHAR to record unlimited number of character

4. number of designation characters exceeds the limit of VARCHAR(200)
Solution 4: designation column is changed to type VARCHAR to record unlimited number of character

5. number of winery characters exceeds the limit of VARCHAR(200)
Solution 5: winery column is changed to type VARCHAR to record unlimited number of character

# Database Information

    Name    |   Owner    | Encoding |   Collate   |    Ctype    |     Access privileges     
------------+------------+----------+-------------+-------------+---------------------------
 homework05 | anniezheng | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
 postgres   | anniezheng | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
 template0  | anniezheng | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/anniezheng            +
            |            |          |             |             | anniezheng=CTc/anniezheng
 template1  | anniezheng | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/anniezheng            +
            |            |          |             |             | anniezheng=CTc/anniezheng
(4 rows)


           List of relations
 Schema |  Name   | Type  |   Owner    
--------+---------+-------+------------
 public | reviews | table | anniezheng
(1 row)


    Column    |         Type          | Collation | Nullable | Default 
-------------+-----------------------+-----------+----------+---------
 id_number   | integer               |           | not null | 
 country     | character varying     |           |          | 
 description | character varying     |           |          | 
 designation | character varying     |           |          | 
 points      | integer               |           | not null | 
 price       | character varying(10) |           |          | 
 province    | character varying(50) |           |          | 
 region_1    | character varying(50) |           |          | 
 region_2    | character varying(50) |           |          | 
 variety     | character varying(50) |           |          | 
 winery      | character varying     |           | not null | 
Indexes:
    "reviews_pkey" PRIMARY KEY, btree (id_number)

# Query Results

1. the total number of rows in the database
 count  
--------
 150930
(1 row)

2. show the first 15 rows, but only display 3 columns (your choice)

 country | points |         winery          
---------+--------+-------------------------
 US      |     96 | Heitz
 Spain   |     96 | Bodega Carmen Rodríguez
 US      |     96 | Macauley
 US      |     96 | Ponzi
 France  |     95 | Domaine de la Bégude
 Spain   |     95 | Numanthia
 Spain   |     95 | Maurodos
 Spain   |     95 | Bodega Carmen Rodríguez
 US      |     95 | Bergström
 US      |     95 | Blue Farm
 Italy   |     95 | Borgo del Tiglio
 US      |     95 | Patricia Green Cellars
 US      |     95 | Patricia Green Cellars
 France  |     95 | Vignobles Brumont
 US      |     95 | Domaine Serene
(15 rows)

3. do the same as above, but chose a column to sort on, and sort in descending order

  country  | points |           winery            
-----------+--------+-----------------------------
 France    |    100 | Krug
 US        |    100 | Cardinale
 France    |    100 | Krug
 Italy     |    100 | Giovanni Chiappini
 US        |    100 | Cayuse
 Australia |    100 | Chambers Rosewood Vineyards
 France    |    100 | Château Haut-Brion
 Italy     |    100 | Tenuta dell'Ornellaia
 Italy     |    100 | Tenuta dell'Ornellaia
 France    |    100 | Krug
 US        |    100 | Cayuse
 Italy     |    100 | Giovanni Chiappini
 Australia |    100 | Chambers Rosewood Vineyards
 US        |    100 | Williams Selyem
 US        |    100 | Shafer
(15 rows)

4. add a new column without a default value

homework05-# \i Desktop/ANNIZHENG-homework05/queries.sql
ALTER TABLE

                           Table "public.reviews"
      Column       |         Type          | Collation | Nullable | Default 
-------------------+-----------------------+-----------+----------+---------
 id_number         | integer               |           | not null | 
 country           | character varying     |           |          | 
 description       | character varying     |           |          | 
 designation       | character varying     |           |          | 
 points            | integer               |           | not null | 
 price             | character varying(10) |           |          | 
 province          | character varying(50) |           |          | 
 region_1          | character varying(50) |           |          | 
 region_2          | character varying(50) |           |          | 
 variety           | character varying(50) |           |          | 
 winery            | character varying     |           | not null | 
 simplified_points | integer               |           |          | 
Indexes:
    "reviews_pkey" PRIMARY KEY, btree (id_number)

5. set the value of that new column

UPDATE 32237
UPDATE 102720

THIS IS JUST TO DEMONSTRATE THAT THE COLUMN IS UPDATED:
 countr_simplified_points_equals_8 
-----------------------------
                            102720
(1 row)

6. show only the unique (non duplicates) of a column of your choice

Sorry I only demonstrate the first 10 rows of the unique column (because the file is large).
You may also see the whole column values if you remove LIMIT 10.

 id_number 
-----------
         0
         1
         2
         3
         4
         5
         6
         7
         8
         9
(10 rows)

7. group rows together by a column value (your choice) and use an aggregate function to calculate something about that group

Note: There are some reviews without writing the origin (country) of that review

 point_sum |        country         
-----------+------------------------
       836 | England
       164 | Montenegro
      4581 | Turkey
    217312 | Germany
   1876158 | France
      2662 | Cyprus
        88 | US-France
      8294 | Slovenia
       170 | Japan
      7772 | Uruguay
    716394 | Spain
      1228 | Serbia
       423 | Ukraine
       326 | South Korea
      1357 | Macedonia
       339 | Bosnia and Herzegovina
       674 | Lithuania
    468643 | Portugal
     11804 | Romania
      3171 | Lebanon
       251 | Egypt
     17295 | Canada
      6015 | Moldova
    272919 | Austria
       246 | China
    435683 | Australia
    196955 | South Africa
   5479629 | US
      3677 | Georgia
    484244 | Argentina
       251 | Slovakia
       176 | Albania
      7679 | Croatia
       783 | Luxembourg
       172 | Tunisia
       515 | Czech Republic
   2075776 | Italy
       423 | 
     76128 | Greece
       701 | India
      2081 | Brazil
     54921 | Israel
      1058 | Morocco
    501902 | Chile
    290680 | New Zealand
       349 | Switzerland
     20173 | Hungary
      5340 | Mexico
      6581 | Bulgaria
(49 rows)

8. now, using the same grouping query or creating another one, find a way to filter the query results based on the values for the groups

 point_sum | country 
-----------+---------
   5479629 | US
   2075776 | Italy
    716394 | Spain
(3 rows)

9. What are the last 10 wineries (those with the lowest point)?

homework05=# \i Desktop/ANNIZHENG-homework05/queries.sql
      winery      | points 
------------------+--------
 Terrenal         |     80
 Sembro           |     80
 Sculpterra       |     80
 Tres Exilios     |     80
 Moss Roxx        |     80
 Cooper Vineyards |     80
 Sculpterra       |     80
 Castoro Cellars  |     80
 Teillery         |     80
 Mapreco          |     80
(10 rows)

10. What are the top 10 wineries (those with the highest point)?

           winery            | points 
-----------------------------+--------
 Giovanni Chiappini          |    100
 Krug                        |    100
 Chambers Rosewood Vineyards |    100
 Krug                        |    100
 Tenuta dell'Ornellaia       |    100
 Tenuta dell'Ornellaia       |    100
 Château Haut-Brion          |    100
 Cayuse                      |    100
 Krug                        |    100
 Giovanni Chiappini          |    100
(10 rows)

11. What is the average point of reviews from California?

 california_average  
---------------------
 87.6827311943920194
(1 row)

12. What are the varieties of winery Heitz?

      variety       | winery 
--------------------+--------
 Cabernet Sauvignon | Heitz
 Rosé               | Heitz
 Cabernet Sauvignon | Heitz
(3 rows)
