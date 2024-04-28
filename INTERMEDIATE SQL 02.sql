/**************************
 * Union, Union All
 **************************/

/* Full Outer Join*/
/* I should read the difference between Outer Join and Full Outer Join */
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
Full Outer Join SQLTutorial.dbo.WareHouseEmployeeDemographics
	ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

/*UNION :
The UNION command is used to select related information from two tables,
which is like a JOIN command. However, when using UNION command, all the 
selected columns need to be of the same data type. With UNION, only distinct 
values are selected.
 
UNION ALL :
UNION ALL command is equal to UNION command, except that UNION ALL selects all 
the values.

The difference between Union and Union all is that Union all will not eliminate
duplicate rows, instead it just pulls all the rows from all the tables fitting 
your query specifics and combines them into a table.*/

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
UNION ALL
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID
