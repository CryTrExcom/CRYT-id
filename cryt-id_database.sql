CREATE TABLE `CRYT_id` (
  `id` int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `user_id` varchar(255) NOT NULL,
  `accountRS` varchar(25) NOT NULL,
  `account` int(30) NOT NULL,
  `timestamp` int(30) NOT NULL,
  `token` varchar(255) NOT NULL,
  `passphrase` varchar(255) NOT NULL
);