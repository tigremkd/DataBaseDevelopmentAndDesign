USE [SEDC_Igor]
GO

--Change Products table always to insert value 1 in price column if no price is provided on insert
ALTER TABLE [Products] 
ADD CONSTRAINT DF_Products_Price
DEFAULT 1 FOR [Price];
GO

--INSERT INTO Products (Name)
--values('Hello')

--SELECT * FROM Products

-- Change Products table to prevent inserting Price that will more than 2x bigger then the cost price
ALTER TABLE [Products]
ADD CONSTRAINT CH_Products_Cost_Price CHECK (Price < (Cost * 2))
GO

--ALTER TABLE [Products]
--DROP CONSTRAINT CH_Products_Cost_Price

--INSERT INTO Products (Price,Cost)
--values(9,5)

--SELECT * FROM Products

--Change Products table to guarantee unique names across the products
ALTER TABLE [Products]
ADD CONSTRAINT UC_Products_Names
UNIQUE ([Name])
GO
--There is already duplicate data The CREATE UNIQUE INDEX statement terminated because a duplicate key was found for the object name 'dbo.Products' and the index name 'UC_Products_Names'. The duplicate key value is (Gluten Free).
