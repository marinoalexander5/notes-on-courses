set SQL_SAFE_UPDATES=0;

-- agregar campo/columna en la tabla articulos: idMarca (futura FK)
ALTER TABLE articulos add column idmarca int after marca;

-- campo en comun: tabla articulos: marca   tabla marcas: nombre
update articulos as a
join marcas as m on a.marca=m.nombre
set a.idmarca=m.id;

-- eliminar columna marca de articulos
ALTER TABLE articulos DROP COLUMN MARCA;

-- creacion de la clave foranea
ALTER TABLE articulos
ADD CONSTRAINT fk_marcas
FOREIGN KEY(idmarca)
REFERENCES marcas(id)
ON DELETE NO ACTION; -- no action hace que no este permitido eliminar registro si es clave foranea