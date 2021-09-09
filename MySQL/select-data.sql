-- recuperacion de datos de una tabla
USE vtelopez; -- no es necesario
-- mostrar todos los alumnos
SELECT * FROM alumnos; -- lo ordena por PK por default

SELECT apellido, nombre FROM alumnos ORDER BY apellido DESC; -- lo ordena ASC

SELECT apellido, nombre FROM alumnos ORDER BY apellido DESC, nombre; -- segundo creiterio en caso que se repitan