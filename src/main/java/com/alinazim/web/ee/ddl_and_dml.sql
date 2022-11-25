-- SQL - Structured Query Language
-- RDMS -> 1. relation, 2. structure

-- DDL - Data Definition Language
-- DML - Data Manipulation Language


------------ DDL ------------

-- CRUD -> Create , Read, Update, Delete

-- create db
CREATE DATABASE testDb;

-- read db
SELECT datname
from pg_database;

-- create table
CREATE TABLE people
(
    person_id  int,
    last_name  varchar(20),
    first_name varchar(50),
    address    varchar(255),
    city       varchar(255),
    primary key (person_id)
);

-- update (alter)
ALTER TABLE people
    ADD age int;

ALTER TABLE people
    DROP address;

ALTER TABLE people
    ADD address varchar(255);

ALTER TABLE people
    ALTER COLUMN person_id TYPE bigint;


-- delete (drop)
DROP TABLE people;

-- truncate table
TRUNCATE TABLE people;


------------ DML ------------

-- select statement

select *
from people; -- All select from people table

select last_name, first_name
from people; -- Specific column select from people table;

select distinct city
from people;
-- Distinct city select from people table

-- where clause

select *
from people
where city = 'Baku'; -- Selects all the people from city Baku, in the People table

select *
from people
where city = 'Baku'
   or 'Sumgayit'; -- Selects all the people from city Baku or Sumgayit, in the People table

select *
from people
where (person_id between 1 and 15)
  and (city = 'Baku' or 'Sumgayit'); -- Selects all the people from city Baku or Sumgayit and person_id between 1-15, in the People table