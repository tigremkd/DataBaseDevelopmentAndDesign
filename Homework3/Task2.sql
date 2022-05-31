USE [SEDC_Igor]
GO

--List all BusinessEntity Names and Customer Names in single result set with duplicates

SELECT [Name] FROM [BusinessEntities]
UNION ALL
SELECT [Name] FROM [Customers]
ORDER BY [Name]
GO

--List all regions where some BusinessEntity is based, or some Customer is based. Remove duplicates
SELECT [Region] as [All_Regions_From_Bussinesses_And_Costumers] FROM [BusinessEntities]
UNION 
SELECT [RegionName] FROM [Customers]
ORDER BY [All_Regions_From_Bussinesses_And_Costumers]
GO

--List all regions where we have BusinessEntities and Customers in the same time

SELECT [Region] as [Regions_That_Are_In_Common] FROM [BusinessEntities]
INTERSECT
SELECT [RegionName] FROM [Customers]
ORDER BY [Regions_That_Are_In_Common]
GO