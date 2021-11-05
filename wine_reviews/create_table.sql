-- write your table creation sql here!

-- CREATE DATABASE homework05;
CREATE TABLE reviews (
	id_number INT PRIMARY KEY,
	country VARCHAR,
	description VARCHAR,
	designation VARCHAR,
	points INT NOT NULL,
	price VARCHAR(10),
	province VARCHAR(50),
	region_1 VARCHAR(50),
	region_2 VARCHAR(50),
	variety VARCHAR(50),
	winery VARCHAR NOT NULL
);

-- below are the original modifications --
-- ALTER TABLE reviews ALTER COLUMN price TYPE VARCHAR(10);
-- ALTER TABLE reviews ALTER COLUMN description TYPE VARCHAR;
-- ALTER TABLE reviews ALTER COLUMN country TYPE VARCHAR;
-- ALTER TABLE reviews ALTER COLUMN designation TYPE VARCHAR;
-- ALTER TABLE reviews ALTER COLUMN winery TYPE VARCHAR;