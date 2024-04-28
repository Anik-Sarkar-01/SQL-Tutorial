/*****************************************
 * Today's Topic : Case Statement
 *****************************************/

/*The CASE expression goes through conditions and returns a value when the first condition is met (like an if-then-else statement). 
So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.
If there is no ELSE part and no conditions are true, it returns NULL.*/

 SELECT FirstName, Lastname, Age,
 CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
    ELSE 'Baby'
 END
 FROM SQLTutorial.dbo.EmployeeDemographics
 WHERE Age is NOT NULL
 ORDER BY Age

 /* What will be the salary after salary raise*/

 SELECT FirstName, LastName, JobTitle, Salary,
 CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * 0.5)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE Salary + (Salary * .03)
 END AS SalaryAfterRaise
 FROM SQLTutorial.dbo.EmployeeDemographics
 JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID