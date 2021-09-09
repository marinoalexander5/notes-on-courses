# History of relational databases

- External View (View)
- Conceptual Level (Schema)
- Internal Level (Schema)
- Database (Physical Level)

**Database:** contains one or more tables.

**Relation / Table:** contains tuples and attributes.

**Tuple / Row:** a set of fields which generally represent an object like a person or music track.

**Attribute / Column or Field:** one of possibly many elements of data corresponding to the object represented by the row.

***
# SQL Architecture 

![](2021-05-14-10-55-42.png)

## Commands:
### Login as superuser
``````
$psql -U postgres 
``````
### List databases (logged as superuser):
``````
\l
``````
### Create Role:
``````
CREATE USER x WITH PASSWORD 'y';
``````
### Create Database:

``````
CREATE DATABASE z WITH OWNER 'x';
``````
### Quit:
``````
\q
``````
### Connect to database as user:
``````
psql <database> <username>
``````
### List tables:
``````
\dt
``````
### Create Table:
``````
CREATE TABLE <tname>(
    <field1> <type1> (<size1>),
    <field2> <type2> (<size2>)    
);

// example

CREATE TABLE users(
    name VARCHAR(128),
    email VARCHAR(128)    
);
``````
### Show schema of table:
``````
\d+ <tablename>
``````
![](2021-05-14-20-18-30.png)

***
# Data Types
## String Fields
- **CHAR(n)** allocates entire space (faster fro small strings of fixed known length, e.g. hashes, etc.)
- **VARCHAR(n)** allocates variaable space depending on data length
##  Text Fields
- **TEXT**: paragraphs, ont used woth indexing or sorting
## Binary Fields
## Integer Fields
- **SMALLINT** (-32768, 32767)
- **INTEGER** (2 Billion)
- **BIGINT** (10exp18)
## Floating Point Numbers
- **REAL** (32-bit) 7 digits of accuracy
- **DOUBLE PRECISION** (64-bit) 14 digits of accuracy
- **NUMERIC(accuracy, decimal)** *accuracy* digits of accuracy and *digits* of decimal (used for money)
## DATES
- **TIMESTAMP** 'YYYY-MM-DD HH:MM:SS'
- **DATE** YYYY-MM-DD
- **TIME** HH:MM:SS
- **NOW()**
***
# Keys and indexes
## AUTO_INCREMENT
```
CREATE TABLE users(
    id SERIAL,
    ...
    email VARCHAR(128) UNIQUE,
    PRIMARY KEY(id)
```
![](2021-09-09-00-47-49.png)
![](2021-09-09-00-51-53.png)