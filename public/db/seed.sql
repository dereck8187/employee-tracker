use employees;

INSERT INTO employee
    (first_name, last_name, role_id)
VALUES
    ('Jahn', 'Jones', 2, NULL),
    ('Addison', 'Montgomery', 1),
    ('Richard', 'Webber', 3, NULL),
    ('Meredith', 'Grey', 2, ),

    INSERT INTO department
    (name)
VALUES
    ('Surgeon'),
    ('GP'),
    ('Nurse'),
    
    INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Surgeon', 300000, 1),
    ('GP', 175000, 2,
    ('Nurse', 70000, 3),
    