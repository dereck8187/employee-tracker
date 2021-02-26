DROP DATABASE IF EXISTS employees_DB;

CREATE DATABASE employees_DB;

USE employees_DB;

CREATE TABLE department (
    id INT AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE role (
    id INT AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(8,2) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id),
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES role(id),

    PRIMARY KEY (id)
);

INSERT INTO department (name) VALUES ('Surgeon'), ('GP'), ('Nurse');

INSERT INTO role (title, salary, department_id) VALUES ('Surgeon', 300000, 1), ('GP', 175000, 2), ('Nurse', 70000, 3);

INSERT INTO employee (first_name, last_name, role_id) VALUES ('Jahn', 'Jones', 2), ('Addison', 'Montgomery', 1), ('Richard', 'Webber', 3), ('Meredith', 'Grey', 2);

select employee.id as ID, employee.first_name as First, employee.last_name as Last, department.name as Department, department.id as Dept_ID, role.title as Role, role.id as Role_ID, role.salary as Salary,
inner join role on employee.role_id = role.id
inner join department on role.department_id = department.id;