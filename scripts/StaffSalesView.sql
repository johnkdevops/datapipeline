CREATE VIEW [dbo].[StaffSalesView]
AS
SELECT 
    s.[staff_id],
    s.[first_name],
    s.[last_name],
    COUNT(o.[order_id]) AS [order_count],
    SUM(p.[price]) AS [total_sales]
FROM 
    [dbo].[staff] s
    LEFT JOIN [dbo].[orders] o ON s.[staff_id] = o.[staff_id]
    LEFT JOIN [dbo].[products] p ON o.[product_id] = p.[product_id]
GROUP BY
    s.[staff_id],
    s.[first_name],
    s.[last_name]