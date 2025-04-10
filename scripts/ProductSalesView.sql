CREATE VIEW [dbo].[ProductSalesView]
AS
SELECT 
    p.[product_id],
    p.[product_name],
    p.[price],
    COUNT(o.[order_id]) AS [order_count],
    COUNT(o.[order_id]) * p.[price] AS [total_revenue]
FROM 
    [dbo].[products] p
    LEFT JOIN [dbo].[orders] o ON p.[product_id] = o.[product_id]
GROUP BY
    p.[product_id],
    p.[product_name],
    p.[price]