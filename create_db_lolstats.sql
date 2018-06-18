DROP DATABASE IF EXISTS db_lolstats;
CREATE DATABASE db_lolstats;
USE db_lolstats;

CREATE TABLE champion
(
    champion_id INT NOT NULL AUTO_INCREMENT,
    champion_name VARCHAR(50),
    roletype VARCHAR(50),
    tier VARCHAR(50),
    winrate DECIMAL,
    PRIMARY KEY (champion_id)
);

CREATE TABLE item
(
    item_id INT NOT NULL AUTO_INCREMENT,
    item_name VARCHAR(100),
    PRIMARY KEY (item_id)
);