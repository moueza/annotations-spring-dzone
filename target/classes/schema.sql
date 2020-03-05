-- schema.sql
DROP TABLE IF EXISTS person;
CREATE TABLE person(
  id NUMERIC IDENTITY PRIMARY KEY,
  first_name VARCHAR(512) NOT NULL,
  last_name VARCHAR(512) NOT NULL,
  date_of_birth TIMESTAMP NOT NULL,
  place_of_birth VARCHAR(512)
);
-- data.sql
INSERT INTO person(first_name, last_name, date_of_birth, place_of_birth) 
VALUES ('First', 'Last', DATE '1990-02-21', 'Bangalore');
INSERT INTO person(first_name, last_name, date_of_birth, place_of_birth) 
VALUES ('First2', 'Last2', DATE '1987-02-21', 'Mumbai');
INSERT INTO person(first_name, last_name, date_of_birth, place_of_birth) 
VALUES ('First3', 'Last3', DATE '1996-02-21', 'Chennai');
INSERT INTO person(first_name, last_name, date_of_birth, place_of_birth) 
VALUES ('First4', 'Last4', DATE '1978-02-21', 'Delhi');
