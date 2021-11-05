# SQL-Project

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
