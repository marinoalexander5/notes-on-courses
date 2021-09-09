-- mostrar los articulos de marca lg y noblex
select * from articualos where marca='lg' or marca='noblex';

-- clausula IN
select * from articualos where marca in ('lg','noblex','samsung');

-- mostrar los articulos, con los precios mayores a 1000 y menores a 2000
SELECT 
    *
FROM
    articulos
WHERE
    precio > 1000 AND precio < 2000;
    
-- clausula between
SELECT 
    *
FROM
    articulos
WHERE
    precio BETWEEN 1000 AND 2000;
