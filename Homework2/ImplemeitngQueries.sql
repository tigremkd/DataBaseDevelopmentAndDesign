USE [SEDC_Igor] 
GO

SELECT * FROM Employees
WHERE FirstName = 'Goran'
GO

SELECT * FROM Employees
WHERE LastName LIKE 'S%'
GO

SELECT * FROM Employees
WHERE DateOfBirth > '1988-01-01'
GO

SELECT * FROM Employees
WHERE Gender = 'm'
GO

SELECT * FROM Employees
WHERE YEAR(hiredate)  LIKE '2008%'
GO

SELECT * FROM Employees
WHERE YEAR(HireDate)  LIKE '2008%'
AND LastName LIKE 'n%'
GO




