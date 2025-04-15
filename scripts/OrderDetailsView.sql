CREATE VIEW [dbo].[OrderDetailsView]
AS
SELECT 
    o.[order_id],
    o.[customer_name],
    s.[staff_id],
    s.[first_name] AS [staff_first_name],
    s.[last_name] AS [staff_last_name],
    p.[product_id],
    p.[product_name],
    p.[price]
FROM 
    [dbo].[orders] o
    INNER JOIN [dbo].[staff] s ON o.[staff_id] = s.[staff_id]
    INNER JOIN [dbo].[products] p ON o.[product_id] = p.[product_id]