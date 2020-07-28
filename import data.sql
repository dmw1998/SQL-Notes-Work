use world;
CREATE TABLE if not exists `NYAB` (
  `id` integer default null,
  `name` varchar(255) DEFAULT NULL,
  `host_id` integer DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `neighbourhood_group` varchar(255) DEFAULT NULL,
  `neighbourhood` varchar(255) DEFAULT NULL,
  `latitude` double default null,
  `longitude` double default null,
  `room_type` varchar(255) DEFAULT NULL,
  `price` integer default null,
  `minimum_nights` integer default null,
  `number_of_reviews` integer default null,
  `last_review` date default null,
  `reviews_per_month` double default null,
  `calculated_host_listings_count` integer default null,
  `availability_365` integer default null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOAD DATA LOCAL INFILE ' C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/AB_NYC_2019.scv' 
INTO TABLE nyab 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;