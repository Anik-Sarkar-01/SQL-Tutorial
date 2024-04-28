/********************
 * Having Clause
 ********************/

 /*The HAVING clause was introduced in SQL to allow the filtering of query results based on aggregate functions and groupings, 
  which cannot be achieved using the WHERE clause that is used to filter individual rows.
  In simpler terms MSSQL, the HAVING clause is used to apply a filter on the result of GROUP BY based on the specified condition.*/

 SELECT JobTitle, COUNT(JobTitle)
 FROM SQLTutorial.dbo.EmployeeDemographics
 JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle 
HAVING COUNT(JobTitle) > 1 

 SELECT JobTitle, AVG(Salary)
 FROM SQLTutorial.dbo.EmployeeDemographics
 JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle 
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)

