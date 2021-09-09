-- insert - update - delete

-- INSERT
-- 1. Mediante valores con nombres de campos
-- INSERT INTO tabla(campo1, campo2, ...) VALUES (valor1, valor2, ...)
INSERT INTO articulos(codigo, descripcion, nombre, precio, stock, marca) values (69, 'Telvisores', 'LED 32" Bravia', 2600, 120, 'Samsung');

-- 2. Mediante valores sin los nombres de los campos
-- INSERT INTO tabla values(valor1, valor2, ...)
INSERT INTO articulos values (68, 'Telvisores', 'LED 32" Bravia', 2600, 120, 'Samsung');

-- 3. Mediante el select de otra tabla
INSERT INTO articulos SELECT * FROM nuevosProductos;

-- 4. Insertando directamente en una tabla nueva
CREATE TABLE HotSaleOctubre2021 as select * from articulos where marca in ('lg', 'samsung', 'sony');