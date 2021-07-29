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
