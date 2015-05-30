
CREATE TABLE data2(
city_id				CHAR(3),
city				CHAR(10),
city_pinyin			CHAR(20),
PRIMARY KEY(city_id));


CREATE TABLE data1(
shop_id				CHAR(8),
_name				CHAR(40),
alias				CHAR(40),
province			CHAR(8),
city_id				CHAR(3),
area				CHAR(20),
small_cate			CHAR(20),
small_cate_id		CHAR(10),
address				CHAR(200),
business_area		CHAR(100),
phone				CHAR(40),
hours				CHAR(200),
avg_price			CHAR(10),
stars				CHAR(10),
photos				CHAR(200),
description			CHAR(200),
tags				CHAR(200),
original_latitude	CHAR(10),
original_longitude	CHAR(10),
navigation			CHAR(200),
CHARacteristics		CHAR(50),
product_rating		CHAR(5),
environment_rating	CHAR(5),
service_rating		CHAR(5),
all_remarks			CHAR(200),
very_good_remarks	CHAR(200),
good_remarks		CHAR(200),
common_remarks		CHAR(200),
bad_remarks			CHAR(200),
very_bad_remarks	CHAR(200),
recommended_dishes	CHAR(200),
is_chains			CHAR(200),
_group				VARCHAR(300),
card 				CHAR(200),
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


