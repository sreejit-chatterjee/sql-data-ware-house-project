-- Create Database  'DataWarehouse'

USE master;
GO


--Drop and recreate the 'DataWareHouse'  database

IF EXISTS (SELECT 1 from sys.databases WHERE name = 'DataWareHouse')
BEGIN
 ALTER DATABASE DataWareHouse SET SINGLE_USER  WITH ROLLBACK IMMEDIATE;
 DROP DATABASE DataWareHouse;
END
GO

-- Create database
CREATE DATABASE DataWareHouse;
GO 


-- USe Database
USE DataWareHouse;
GO


  -- Create Layer Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
