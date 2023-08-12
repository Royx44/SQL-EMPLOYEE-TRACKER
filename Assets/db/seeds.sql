INSERT INTO department (id, name)
VALUES 
(1, 'inventory clerk'),
(2, 'customer service'),
(3, 'manager');

SELECT * FROM roles

INSERT INTO roles (id ,title, salary, department_id)
VALUES 
(1, 'stocker', 14.00, 1),
(2, 'cashier', 12.00, 2),
(3, 'department manager', 18.00, 3);

SELECT * FROM roles

INSERT INTO employee (id ,first_name, last_name, roles_id, manager_id)
VALUES 
(1, 'James', 'Lee', 3, NULL)
(2, 'Ray', 'Jones', 2, 1)
(3, 'Bob', 'Cloney', 1, 1)






