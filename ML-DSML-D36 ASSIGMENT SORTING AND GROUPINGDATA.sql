CREATE DATABASE Assignment5;

USE Assignment5;

CREATE TABLE Country (Id INT PRIMARY KEY, Country_name VARCHAR(40), Population INT,
    Area FLOAT);

INSERT INTO Country (Id, Country_name, Population, Area)
VALUES
(1, 'Japan', 123753041, 364555),
(2, 'Australia', 26713205, 26713205),
(3, 'Switzerland', 8921981, 39516),
(4, 'Russia', 144820423, 16376870),
(5, 'Canada', 39742430, 1943950),
(6, 'Ireland', 5255017, 68890),
(7, 'UK', 69138192, 241930),
(8, 'USA',345426571, 298170),
(9, 'Germany', 84552242, 348560),
(10, 'India', 1450935791, 2973190);

SELECT * FROM Country;

CREATE TABLE Persons (Id INT PRIMARY KEY, Fname VARCHAR(60), Lname VARCHAR(60),
    Population INT, Rating FLOAT, Country_Id INT, Country_name VARCHAR(60),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id));
    
    
    INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'Frederick', 'Louis', 53429, 4.7,9, 'Germany'),
(2, 'Noah', 'Murphy', 1203, 4.2, 8, 'Ireland'),
(3, 'Robert', 'Jones', 64790, 3.3, 1,NULL),
(4, 'Margaret', 'Lawrence', 40639, 4.9, 6, 'Canada'),
(5, 'Isha', 'Sharma', 73698, 4.2, 1, 'India'),
(6, 'Robert', 'Walser', 2004, 3.9, 2, 'Switzerland'),
(7, 'Rose','Byrne', 10479, 4, 3, 'Australia'),
(8, 'Emma', 'Thompson', 69804, 4.9, 5, 'UK'),
(9, 'Christopher', 'Jones', 470, 3.4, 2, NULL),
(10, 'Richard', 'Ford', 83697, 4.6,5 ,'USA');

SELECT * FROM Persons;

SELECT LEFT(Country_name, 3) AS Short_Country_name FROM Country;

SELECT concat(Fname, ' ', Lname) AS Full_Name FROM Persons;

SELECT COUNT(DISTINCT Country_name) AS Unique_Countries FROM Persons;

SELECT MAX(Population) AS Max_Population FROM Country;

SELECT MIN(Population) AS Min_Population FROM Persons;

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
VALUES
(11, 'Neil', NULL, 35741, 4.1, 1, 'USA'),
(12, 'Zera', NULL, 68471, 3.2, 2, 'India');


SELECT COUNT(Lname) AS Lname_Count FROM Persons WHERE Lname IS NOT NULL;

SELECT COUNT(*) AS Row_Count FROM Persons;

SELECT Population FROM Country LIMIT 3;

SELECT * FROM Country ORDER BY RAND() LIMIT 3;

SELECT * FROM Persons ORDER BY Rating DESC;

SELECT Country_name, SUM(Population) AS Total_Population
FROM Persons
GROUP BY Country_name;

SELECT Country_name, SUM(Population) AS Total_Population
FROM Persons
GROUP BY Country_name
HAVING SUM(Population) > 50000;

SELECT Country_name, COUNT(*) AS Total_Persons, AVG(Rating) AS Avg_Rating
FROM Persons
GROUP BY Country_name
HAVING COUNT(*) > 2
ORDER BY Avg_Rating ASC;










