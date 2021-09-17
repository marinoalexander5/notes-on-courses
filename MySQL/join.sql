-- JOINS:
/*
	1. INNER JOIN
	2. OUTER JOIN
		2.1 LEFT JOIN
        2.2 RIGHT JOIN
    3. CROSS JOIN
    4. SELF JOIN
*/
    
-- 1.     
SELECT 
    a.codigo, m.nombre AS marca, a.precio
FROM
    marcas AS m
        JOIN
    articulos AS a ON a.idmarca = m.id;