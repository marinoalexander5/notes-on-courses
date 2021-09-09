-- campo autoincremental: el motor de MySQL lo asigna solo al crear el registro
CREATE TABLE localidades
(
	codigo INT AUTO_INCREMENT,
    nombre VARCHAR(50),
    PRIMARY KEY (codigo)
);

-- agrego una localidad 
INSERT INTO localidades (nombre) VALUES ('Daireaux');
INSERT INTO localidades (nombre) VALUES ('Munro');
INSERT INTO localidades (nombre) VALUES ('Olivos');