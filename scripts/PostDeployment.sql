-- Insert initial data
IF NOT EXISTS (SELECT * FROM [dbo].[products] WHERE [product_name] = 'Laptop')
BEGIN
    INSERT INTO [dbo].[products] ([product_name], [price]) VALUES
        ('Laptop', 799.99), ('Keyboard', 129.99), ('Mouse', 29.99);
END

IF NOT EXISTS (SELECT * FROM [dbo].[staff] WHERE [first_name] = 'Alice')
BEGIN
    INSERT INTO [dbo].[staff] ([first_name], [last_name]) VALUES
        ('Alice', 'Smith'), ('Bob', 'Johnson'), ('Charlie', 'Williams');
END

IF NOT EXISTS (SELECT * FROM [dbo].[orders] WHERE [customer_name] = 'David Lee')
BEGIN
    INSERT INTO [dbo].[orders] ([customer_name], [staff_id], [product_id]) VALUES
        ('David Lee', 1, 1), ('Emily Chen', 2, 2), ('Frank Brown', 1, 3);
END