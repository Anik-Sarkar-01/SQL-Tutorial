/******************
* Aliasing
*******************/

/*
	SQL aliases are used to give a table, or a column in a table, a temporary name.
	Aliases are often used to make column names more readable.
	An alias only exists for the duration of that query.
	An alias is created with the AS keyword.
*/

SELECT FirstName + ' ' + Lastname AS Fullname
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT AVG(Age) AS AvgAge
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT Demo.EmployeeID
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
JOIN SQLTutorial.dbo.EmployeeSalary AS SAL
	ON DEMO.EmployeeID = SAL.EmployeeID