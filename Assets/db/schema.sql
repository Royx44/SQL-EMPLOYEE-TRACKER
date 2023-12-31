DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;

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
  salary DECIMAL(10, 2) NOT NULL,
  department_id INT
  FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee(
  id INT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL
  last_name VARCHAR(30) NOT NULL
  roles_id INT,
  manager_id INT
  FOREIGN KEY (roles_id) REFERENCES roles(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id)
);
