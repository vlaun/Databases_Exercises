USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE `albums` (
  `id`           INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `artist`       VARCHAR(300)     NOT NULL,
  `name`         VARCHAR(256)     NOT NULL,
  `release_date` DATE             NOT NULL,
  `sales`        FLOAT            NOT NULL,
  `genre`        VARCHAR(256),
  PRIMARY KEY (`id`)
)
