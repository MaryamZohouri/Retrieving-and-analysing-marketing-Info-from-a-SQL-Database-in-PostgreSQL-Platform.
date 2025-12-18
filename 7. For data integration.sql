
use SAB
select*from Integration
SELECT 
    ID,
    STRING_AGG(Product, ', ') WITHIN GROUP (ORDER BY Product) AS Product
FROM 
    Integration
GROUP BY 
    ID
ORDER BY 
    ID;

---for sql server version before 2017, use "STUFF + FOR XML PATH"
SELECT 
    t.ID,
    STUFF(
        (SELECT ', ' + t2.Product
         FROM Integration t2
         WHERE t2.ID = t.ID
         FOR XML PATH(''), TYPE
        ).value('.', 'NVARCHAR(MAX)')
    , 1, 2, '') AS Product
FROM 
    Integration t
GROUP BY 
    t.ID
ORDER BY 
    t.ID;

