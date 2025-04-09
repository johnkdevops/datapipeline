CREATE TABLE [dbo].[orders] (
    [order_id] INT PRIMARY KEY IDENTITY(1,1),
    [customer_name] VARCHAR(255) NOT NULL,
    [staff_id] INT NOT NULL,
    [product_id] INT NOT NULL,
    CONSTRAINT [FK_orders_staff] FOREIGN KEY ([staff_id]) REFERENCES [dbo].[staff] ([staff_id]),
    CONSTRAINT [FK_orders_products] FOREIGN KEY ([product_id]) REFERENCES [dbo].[products] ([product_id])
);
GO