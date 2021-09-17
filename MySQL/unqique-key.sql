-- clave UNIQUE no permite duplicados
alter table marcas add unique index uq_nombre(nombre asc);

-- actualizar los origenes de las marcas
-- id: 1, 2, 3, 5 USA; 
-- id: 4, 7, 8 ALEMANIA; 
-- id: 6, 9, 10, 11, 12 JAPON;
-- id: 13, 14, 15, 16, 17, 18, 33, 34 ARGETNINA

update marcas set origen='USA' WHERE id in(1,2,3,5);
update marcas set origen='ALEMANIA' WHERE id in(4,7,8);
update marcas set origen='JAPON' WHERE id in(6, 9, 10, 11, 12);
update marcas set origen='ARGETNINA' WHERE id in(13, 14, 15, 16, 17, 18, 33, 34);


