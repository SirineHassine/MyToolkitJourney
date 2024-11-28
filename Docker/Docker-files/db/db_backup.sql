
DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT,
`Email` varchar(255),
`FirstName` varchar(255),
`LastName` varchar(255),
`Message` varchar(255),
PRIMARY KEY(`id`)
);

