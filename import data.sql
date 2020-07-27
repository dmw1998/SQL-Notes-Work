use world;
CREATE TABLE `NYAB` (
  `id` int(11) default null,
  `name` varchar(255) DEFAULT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `neighbourhood_group` varchar(255) DEFAULT NULL,
  `neighbourhood` varchar(255) DEFAULT NULL,
  `latitude` double default null,
  `longitude` double default null,
  `room_type` varchar(255) DEFAULT NULL,
  `price` int(11) default null,
  `minimum_nights` int(11) default null,
  `number_of_reviews` int(11) default null,
  `last_review` date default null,
  `reviews_per_month` double default null,
  `calculated_host_listings_count` int(11) default null,
  `availability_365` int(11) default null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;