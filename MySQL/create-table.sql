-- creacion de la base de datos
-- campos: dni, apellido, nombre, observaciones
-- nombre: Alumnos
-- activar base de datos
USE vtelopez;
CREATE TABLE alumnos
(
	-- campos
    dni INT PRIMARY KEY,
    apellido VARCHAR(30) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    obs VARCHAR(100)
);
-- borrar tabla
-- DROP TABLE alumnos;