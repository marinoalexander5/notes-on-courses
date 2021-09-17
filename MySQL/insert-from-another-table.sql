-- crear la tabla: marcas : id, nombre, origen
CREATE TABLE marcas (
    id INT AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    origen VARCHAR(20) NULL,
    PRIMARY KEY (id)
);
   
INSERT INTO marcas(nombre) SELECT distinct MARCA FROM ARTICULOS ORDER BY MARCA;