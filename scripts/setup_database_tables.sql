-- Check if database exists and create if it doesn't
IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'DataWarehouse')
BEGIN
    CREATE DATABASE datawarehouse;
END
GO

-- Switch to the database
USE datawarehouse;
GO

-- Check if tables exist and create if they don't
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'products')
BEGIN
    CREATE TABLE products (
        product_id INT PRIMARY KEY IDENTITY(1,1),
        product_name VARCHAR(255) NOT NULL,
        price DECIMAL(10,2) NOT NULL
    );
    
    -- Insert data only if we're creating the table
    INSERT INTO products (product_name, price) VALUES
        ('Laptop', 799.99), ('Keyboard', 129.99), ('Mouse', 29.99);
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'staff')
BEGIN
    CREATE TABLE staff (
        staff_id INT PRIMARY KEY IDENTITY(1,1),
        first_name VARCHAR(255) NOT NULL,
        last_name VARCHAR(255) NOT NULL
    );
    
    -- Insert data only if we're creating the table
    INSERT INTO staff (first_name, last_name) VALUES
        ('Alice', 'Smith'), ('Bob', 'Johnson'), ('Charlie', 'Williams');
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'orders')
BEGIN
    CREATE TABLE orders (
        order_id INT PRIMARY KEY IDENTITY(1,1),
        customer_name VARCHAR(255) NOT NULL,
        staff_id INT NOT NULL,
        product_id INT NOT NULL,
        FOREIGN KEY (staff_id) REFERENCES staff (staff_id),
        FOREIGN KEY (product_id) REFERENCES products (product_id)
    );
    
    -- Insert data only if we're creating the table
    INSERT INTO orders (customer_name, staff_id, product_id) VALUES
        ('David Lee', 1, 1), ('Emily Chen', 2, 2), ('Frank Brown', 1, 3);
END