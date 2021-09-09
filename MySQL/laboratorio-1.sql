DROP DATABASE if exists Laboratorio;

create database Laboratorio;

use Laboratorio;

CREATE TABLE Facturas (
    Letra CHAR,
    Numero INTEGER,
    ClienteID INTEGER,
    ArticuloID INTEGER,
    Fecha DATE,
    Monto DOUBLE,
    PRIMARY KEY (Letra, Numero)
);

CREATE TABLE Articulos (
    ArticuloID INTEGER NOT NULL PRIMARY KEY,
    Nombre VARCHAR(50),
    Precio DOUBLE,
    Stock INTEGER
);

CREATE TABLE Clientes (
    ClienteID INTEGER PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Cuit CHAR(16),
    Direccion VARCHAR(50),
    Comentarios VARCHAR(50)
);

insert into Articulos(ArticuloID, Nombre, Precio, Stock) values (1, 'Destornillador', 25, 50);
insert into Articulos(ArticuloID, Nombre, Precio, Stock) values (2, 'Pinza'         , 35, 22);
insert into Articulos(ArticuloID, Nombre, Precio, Stock) values (3, 'Martillo'      , 15, 28);
insert into Articulos(ArticuloID, Nombre, Precio, Stock) values (4, 'Maza'          , 35, 18);
insert into Articulos(ArticuloID, Nombre, Precio, Stock) values (5, 'Balde'         , 55, 13);


insert into Clientes ( ClienteID, Nombre, Apellido, Cuit, Direccion, Comentarios) values (1, 'Agustin' , 'Diaz'  , '20-35987452-0', 'Lima 458'    , NULL);
insert into Clientes ( ClienteID, Nombre, Apellido, Cuit, Direccion, Comentarios) values (2, 'Angela'  , 'Lopez' , '20-37987854-0', 'Peru 32'     , NULL);
insert into Clientes ( ClienteID, Nombre, Apellido, Cuit, Direccion, Comentarios) values (3, 'Cristian', 'Fraga' , '20-36887498-0', 'Chile 6985'  , NULL);
insert into Clientes ( ClienteID, Nombre, Apellido, Cuit, Direccion, Comentarios) values (4, 'Sol'     , 'Cabral', '20-25982495-0', 'Lavalle 1201', NULL);
insert into Clientes ( ClienteID, Nombre, Apellido, Cuit, Direccion, Comentarios) values (5, 'Ezequiel', 'Perez' , '20-21987111-0', 'Uruguay 25'  , NULL);

insert into Facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 1, 1, 1, '2011/10/18', 500);
insert into Facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 2, 2, 2, '2011/10/18', 2500);
insert into Facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 3, 3, 3, '2011/10/18', 320);
insert into Facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 4, 4, 4, '2011/10/18', 120);
insert into Facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('A', 5, 5, 5, curdate()   , 300);

SELECT * FROM Facturas;

DROP TABLE IF exists agenda;

CREATE TABLE Agenda (
    Contacto INTEGER,
    Nombre VARCHAR(20),
    Domicilio INTEGER,
    Telefono VARCHAR(9),
    primary key(Contacto)
);

-- Mostrar Tablas
SHOW TABLES;

-- Ver estructura de campos agenda
DESCRIBE Agenda;

insert into Agenda(Contacto, Nombre, Domicilio, Telefono) values (1, 'carlitos', 'calle falsa 123', '456123');

drop table if exists Agenda;