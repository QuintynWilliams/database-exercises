USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(55) NOT NULL,
    name VARCHAR (55) NOT NULL,
    release_date VARCHAR(10) NOT NULL,
    sales DOUBLE,
    genre VARCHAR (55),
    PRIMARY KEY (id)
);

