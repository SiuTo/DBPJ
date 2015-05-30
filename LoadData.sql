
CREATE TABLE data2(
city_id				VARCHAR(3),
city				VARCHAR(10),
city_pinyin			VARCHAR(20),
PRIMARY KEY(city_id));


CREATE TABLE data1(
shop_id				VARCHAR(8),
`name`				VARCHAR(40),
alias				VARCHAR(40),
province			VARCHAR(8),
city_id				VARCHAR(3),
area				VARCHAR(20),
small_cate			VARCHAR(20),
small_cate_id		VARCHAR(10),
address				VARCHAR(200),
business_area		VARCHAR(100),
phone				VARCHAR(40),
hours				VARCHAR(200),
avg_price			int,
stars				float,
photos				VARCHAR(200),
description			VARCHAR(200),
tags				VARCHAR(200),
original_latitude	VARCHAR(50),
original_longitude	VARCHAR(50),
navigation			VARCHAR(200),
characteristics		VARCHAR(50),
product_rating		VARCHAR(10),
environment_rating	VARCHAR(10),
service_rating		VARCHAR(10),
all_remarks			int,
very_good_remarks	int,
good_remarks		int,
common_remarks		int,
bad_remarks			int,
very_bad_remarks	int,
recommended_dishes	VARCHAR(200),
is_chains			VARCHAR(200),
`group`				VARCHAR(300),
card 				VARCHAR(200),
PRIMARY KEY(shop_id),
FOREIGN KEY(city_id) REFERENCES data2(city_id));

LOAD DATA INFILE 'C:\data_2.csv' 
INTO TABLE data2
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
ESCAPED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES; 


LOAD DATA INFILE 'C:\data_1.csv' 
INTO TABLE data1
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
ESCAPED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES; 


