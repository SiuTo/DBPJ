USE shopDB;

DROP TABLE shop;
DROP TABLE city;

CREATE TABLE IF NOT EXISTS city(
	city_id				SMALLINT NOT NULL,
	city				VARCHAR(5) NOT NULL,
	city_pinyin			VARCHAR(20),
	province			VARCHAR(5),
	PRIMARY KEY(city_id)
);

CREATE TABLE IF NOT EXISTS shop(
	shop_id				INT NOT NULL,
	`name`				VARCHAR(50) NOT NULL,
	alias				VARCHAR(50),
	city_id				SMALLINT,
	area				VARCHAR(20),
	small_cate			VARCHAR(10),
	small_cate_id		VARCHAR(10),
	address				VARCHAR(100),
	business_area		VARCHAR(15),
	phone				VARCHAR(40),
	hours				VARCHAR(150),
	avg_price			SMALLINT,
	stars				DECIMAL(2, 1),
	photos				VARCHAR(100),
	description			VARCHAR(200),
	tags				VARCHAR(100),
	original_latitude	DOUBLE,
	original_longitude	DOUBLE,
	navigation			VARCHAR(100),
	characteristics		VARCHAR(50),
	product_rating		DECIMAL(2, 1),
	environment_rating	DECIMAL(2, 1),
	service_rating		DECIMAL(2, 1),
	all_remarks			SMALLINT,
	very_good_remarks	SMALLINT,
	good_remarks		SMALLINT,
	common_remarks		SMALLINT,
	bad_remarks			SMALLINT,
	very_bad_remarks	SMALLINT,
	recommended_dishes	VARCHAR(200),
	is_chains			BOOLEAN,
	`group`				VARCHAR(300),
	card 				VARCHAR(50),
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

