CREATE DATABASE IF NOT EXISTS TestDB;

USE TestDB;

CREATE TABLE Temperature (
	id INT,
	record_date DATE NOT NULL,
	temperature INT NOT NULL
);

INSERT INTO Temperature (id, record_date, temperature)
VALUES 
	(1, '2015-01-01', 10),
	(2, '2015-01-02', 25),
	(3, '2015-01-03', 20),
	(4, '2015-01-04', 30);

SELECT t2.id
FROM Temperature t1
JOIN Temperature t2 ON t2.record_date = DATE_ADD(t1.record_date, INTERVAL 1 DAY)
WHERE t2.temperature > t1.temperature;

