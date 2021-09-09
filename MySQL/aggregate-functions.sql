-- Funciones agregadas
/*
	count: devuelve cantidad de registros
    sum: suma del contenido dentro de un campo
    max: valor mayor del campo numerico
    min: calor minimo del campo numerico
    avg: retorna valor promedio de un campo numerico
*/

SELECT COUNT(dni) as Cantidad FROM alumnos;

SELECT COUNT(*) from alumnos;

SELECT COUNT(apellido) FROM alumnos; -- ignora los valores null

-- cuantos articulos de marca lg ?
SELECT COUNT(codigo) as CantLG FROM articulos WHERE marca='lg'; -- el campo dentro del count no puede ser nulo

-- cantidad de modelos y total stock de televisores
SELECT 
    COUNT(*) AS CantModelos, SUM(stock) AS StockMarca
FROM
    articulos
WHERE
    descripcion = 'televisores';
    
-- precio mas caro que tengo
SELECT MAX(precio) as MasCaro FROM articulos;

-- promedio de los 10 precios mas bajos requiere subqueries, no esta bien asi
SELECT * FROM articulos
 ORDER BY precio ASC LIMIT 10;