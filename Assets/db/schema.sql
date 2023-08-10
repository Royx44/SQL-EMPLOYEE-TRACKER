DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db_db;

USE company_db;

DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS employee;


CREATE TABLE department (
  id INT PRIMARY KEY 
  department_name VARCHAR(30) NOT NULL
);

CREATE TABLE roles(
  id INT PRIMARY KEY,
  title VARCHAR(30) NOT NULL
  salary VARCHAR(30) NOT NULL
  department_id INT
);

CREATE TABLE employee(
  id INT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL
  last_name VARCHAR(30) NOT NULL
  manager_id INT
  if NOT EXISTS manager_id NUL
);
