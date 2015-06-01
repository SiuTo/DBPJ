USE shopDB;

CREATE TABLE IF NOT EXISTS city(
	city_id				VARCHAR(3) NOT NULL,
	city				VARCHAR(10) NOT NULL,
	city_pinyin			VARCHAR(20),
	PRIMARY KEY(city_id)
);

CREATE TABLE IF NOT EXISTS shop(
	shop_id				VARCHAR(8) NOT NULL,
	`name`				VARCHAR(40) NOT NULL,
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
	avg_price			INT,
	stars				FLOAT,
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
	all_remarks			INT,
	very_good_remarks	INT,
	good_remarks		INT,
	common_remarks		INT,
	bad_remarks			INT,
	very_bad_remarks	INT,
	recommended_dishes	VARCHAR(200),
	is_chains			VARCHAR(200),
	`group`				VARCHAR(300),
	card 				VARCHAR(200),
	PRIMARY KEY(shop_id),
	FOREIGN KEY(city_id) REFERENCES city(city_id)
);

LOAD DATA LOCAL INFILE 'data/data_2.csv' 
INTO TABLE city 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 

LOAD DATA LOCAL INFILE 'data/data_1.csv' 
INTO TABLE shop
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 

