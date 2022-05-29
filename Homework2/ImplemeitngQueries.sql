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
WHERE HireDate BETWEEN '1998-01-01' AND '1998-01-31'
GO

SELECT * FROM Employees
WHERE LastName LIKE 'A%' AND HireDate BETWEEN '1998-01-01' AND '1998-01-31'
GO



