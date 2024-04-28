/*
 * Partition By
 */

/* The 'PARTITION BY' clause in SQL is a subclause of the 'OVER' clause. It's used to split a large table into smaller, more manageable partitions. 
Each partition is then processed for the function present in the 'OVER()' clause.*/

 SELECT *
 FROM SQLTutorial..EmployeeDemographics Dem

 SELECT *
 FROM SQLTutorial..EmployeeSalary Sal

 SELECT *
 FROM SQLTutorial..EmployeeDemographics Dem
 JOIN SQLTutorial..EmployeeSalary Sal
	ON Dem.EmployeeID = Sal.EmployeeID

 SELECT FirstName, Lastname, Gender, Salary,
 COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
 FROM SQLTutorial..EmployeeDemographics Dem
 JOIN SQLTutorial..EmployeeSalary Sal
	ON Dem.EmployeeID = Sal.EmployeeID

 -- Group By snippet to see the difference between partition by and group by
 SELECT  Gender,  COUNT(Gender)
 FROM SQLTutorial..EmployeeDemographics Dem
 JOIN SQLTutorial..EmployeeSalary Sal
	ON Dem.EmployeeID = Sal.EmployeeID
GROUP BY Gender