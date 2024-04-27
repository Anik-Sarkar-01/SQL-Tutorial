/***** COMMANDS FOR CREATING TABLE *****/
-- Table 1 creation Query:
Create Table EmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
Lastname varchar(50), 
Age int, 
Gender varchar(50)
)
-- Table 2 creation Query:
Create Table EmployeeSalary 
(EmployeeID int, 
JobTitle varchar(50), 
Salary int
)


/***** COMMANDS FOR INSERTING VALUES INTO THE TABLES *****/
-- Table 1 values insertion Query:
INSERT INTO EmployeeDemographics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')
-- Table 2 values insertion Query:
INSERT INTO EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)


/**************************************************
 *  SELECT statement
 *, TOP, DISTINCT, COUNT, AS, MAX, MIN, AVG
 **************************************************/
SELECT Top 5 *
FROM EmployeeDemographics

SELECT DISTINCT(EmployeeID)
FROM EmployeeDemographics

SELECT COUNT(Lastname) AS LastNameCount
FROM EmployeeDemographics

SElECT MAX(Salary)
FROM EmployeeSalary

SElECT MIN(Salary)
FROM EmployeeSalary

SElECT AVG(Salary)
FROM EmployeeSalary

SELECT *
FROM [SQL Tutorial].dbo.EmployeeSalary


/***********************************************************
 * WHERE statement
 *  =, <>, <, >, >=, <=, AND, OR, LIKE, NULL, NOT NULL, IN
 ***********************************************************/
SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim'

SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'

SELECT *
FROM EmployeeDemographics
WHERE Age >= 30

SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE Lastname LIKE 'S%ott%'

SELECT *
FROM EmployeeDemographics
WHERE FirstName is NULL

SELECT *
FROM EmployeeDemographics
WHERE FirstName is NOT NULL

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael')


/********************************************
 * GROUP BY, ORDER BY
 ********************************************/
SELECT Gender 
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender , COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender , Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age

SELECT Gender , COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender ASC

SELECT Gender , COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC

SELECT Gender , COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY Gender ASC

SELECT *
FROM EmployeeDemographics
ORDER BY Age 

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC , Gender DESC

SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC , 5 DESC