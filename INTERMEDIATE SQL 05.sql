/*
 * Updating / Deleting Data
 */

-- UPDATING
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

UPDATE SQLTutorial.dbo.EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND Lastname = 'Flax'

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

UPDATE SQLTutorial.dbo.EmployeeDemographics
SET Age = 31 , Gender = 'Female'
WHERE EmployeeID = 1012


-- DELETING
-- First see what you are deleting.
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1004

-- After seeing carefully you can delete
DELETE FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1004