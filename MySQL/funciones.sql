SELECT 
    dni, CONCAT(apellido, ', ', nombre) AS alumno
FROM
    alumnos
ORDER BY alumno;

-- funcion LEFT: extrae tantos caracteres de la izquierda como le indico
SELECT 
    dni, apellido, nombre, LEFT(apellido, 3) AS primerasLetras
FROM
    alumnos;
    
-- crear un mail con: primera letra . apellido @gmail.com
    SELECT 
    *,
    LOWER(CONCAT(LEFT(nombre, 1),
                    '.',
                    apellido,
                    '@gmail.com')) AS email
FROM
    alumnos;
    
-- substring(campo, x, y): extrae desde posicion x, y caracteres