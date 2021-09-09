-- UPDATE: Modificar datos
-- actualizar campo stock sumando al contenido 10 unidades

UPDATE hotsaleoctubre2021 SET stock=stock+10;

-- levantar la restriccion de seguridad
SET SQL_SAFE_UPDATES=0;

-- Aplicar a 'LG' un descuento del 25%
UPDATE hotsaleoctubre2021 SET precio=precio-precio*0.25 where marca='lg';