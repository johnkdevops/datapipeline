CREATE TABLE [dbo].[products] (
    [product_id] INT PRIMARY KEY IDENTITY(1,1),
    [product_name] VARCHAR(255) NOT NULL,
    [price] DECIMAL(10,2) NOT NULL
);
GO

-- Pre-deployment script can handle this data insertion