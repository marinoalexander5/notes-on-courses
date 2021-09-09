-- buscar por patron: clausula LIKE
-- traer articulos cuyo nombre empieze con t
SELECT 
    *
FROM
    articulos
WHERE
    NOMBRE LIKE 't%';
    
-- Filtrar lo que contenga LCD en cualquier parte
SELECT 
    *
FROM
    articulos
WHERE
    NOMBRE LIKE '%LCD%';
    
