CREATE DATABASE IF NOT EXISTS trudb;
USE trudb;

CREATE TABLE users(
    id int NOT NULL PRIMARY KEY,
    nama varchar(255) NOT NULL,
    kantor varchar(255) NOT NULL
);

INSERT INTO users(id,nama,kantor)
VALUES
(001,'andi','pusat'),
(002,'budi','cabang'),
(003,'celly','pusat'),
(004,'dodo','cabang');
