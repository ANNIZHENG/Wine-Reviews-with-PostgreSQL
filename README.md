# Wine-Reviews

# Overview

**Columns**: id_number, country, description, designation, points, price, province, region_1, region_2, variety, winery

**Expected Types of Each Column**: INT, VARCHAR, VARCHAR, VARCHAR, VARCHAR, INT, INT (changed to VARCHAR), VARCHAR, VARCHAR, VARCHAR, VARCHAR, VARCHAR

**Author**: zackthoutt

**Source**: https://www.kaggle.com/zynicide/wine-reviews

**Data Source**: https://www.winemag.com/?s=&drink_type=wine

**Type**: CSV

**Size**: 49.7 MB

**Data License**: CC BY-NC-SA 4.0

**What it contains**: This data contain reviews of wine from reviewers of different countries.

# Table Design

id_number INT PRIMARY KEY
NULL and duplicates not allowed in id_number because it is the only way to identify bewteen each review. So, I set it to be a PRIMARY_KEY.

```
country VARCHAR, description VARCHAR, designation VARCHAR, points INT, price VARCHAR(10), province VARCHAR(50), region_1 VARCHAR(50), region_2 VARCHAR(50), variety VARCHAR(50), winery VARCHAR
```
