-- eligiendo campos y en que orden los quiero
-- mostrar codigo, marca, nombre, y precio (todos los articulos)alter
SELECT 
    codigo AS numero,
    marca,
    nombre AS producto,
    precio AS precioUnitario,
    ROUND(precio * 0.21) AS iva,
    precio + 1.21 AS precioFinal
FROM
    articulos
ORDER BY producto;

-- filtrando por valores de campo con WHERE
SELECT 
    *
FROM
    articulos
WHERE
    marca = 'lg';
    
-- mostrar articulos que tengan stock
SELECT 
    *
FROM
    articulos
WHERE
    stock > 0
ORDER BY stock ASC;

-- funciones basicas de MySql