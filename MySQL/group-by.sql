/* HAVING se usa para filtrar a partir de aggregate functions, el WHERE a partir de campos */
/* Cuando agrego una columna (con funciones agregadas) que no es una funcion tengo que agrupar por el campo que no sea el creado por la aggregate function */

-- mostrar promedio de los telefonos
SELECT 
    descripcion AS linea,
    COUNT(*) AS Modelos,
    AVG(precio) AS promedioPrecio
FROM
    articulos
GROUP BY descripcion
ORDER BY modelos;

-- mostrar descripciones y total de stock ordenado por stock descendente
SELECT descripcion, -- es un campo
	SUM(stock) AS TotalStock -- es una funcion
FROM articulos
GROUP BY descripcion
order by TotalStock desc;

-- filtrar solo los que tienen mas de 100 u en stock
/* El where solo se puede aplicar a campos, no a funciones. En ese caso se usa HAVING */
SELECT descripcion, -- es un campo
	SUM(stock) AS TotalStock -- es una funcion
FROM articulos
GROUP BY descripcion
HAVING TotalStock > 100
order by TotalStock desc;

-- mostrar cantidad de modelos por marca
SELECT 
    marca, COUNT(*) AS Modelos
FROM
    articulos
GROUP BY marca
having Modelos > 5
ORDER BY modelos DESC;

-- mostrar de los telefonos y computadoras, el total de stock, el promedio de precios
-- ordenado por promedio de precios
SELECT 
    descripcion,
    SUM(stock) AS totalStock,
    AVG(precios) AS promedioPrecio
FROM
    articulos
WHERE descripcion IN ('telefonos' , 'computadoras')
GROUP BY descripcion
ORDER BY promedioPrecio;