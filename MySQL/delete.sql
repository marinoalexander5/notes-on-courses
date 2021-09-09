-- Borrar Datos
-- 1. DROP
-- 2. TRUNCATE
-- 3. DELETE

-- 1. DROP: elimina el objeto
DROP TABLE alumnos;

-- 2. TRUNCATE: borra todos los registros de la tabla pero mantiene la estructura 
-- (si tiene campo autoincremental lo resetea)
TRUNCATE TABLE alumnos;

-- 3. DELETE
DELETE FROM alumnos 
WHERE
    apellido LIKE '%r';