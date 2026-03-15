CREATE TABLE employee (
    emp_id     NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name  VARCHAR2(50),
    email      VARCHAR2(100) UNIQUE,
    phone      CHAR(10),
    salary     NUMBER(10, 2),
    hire_date  DATE,
    last_login TIMESTAMP,
    bonus      NUMBER(8, 2),
    age        NUMBER(3),
    is_active  CHAR(1),
    department VARCHAR2(50),
    address    CLOB
);

INSERT INTO employee VALUES ( 101, 'John', 'Doe', 'john@example.com', '9876543210', 55000.50, DATE '2023-01-15', TIMESTAMP '2024-01-01 10:00:00', 5000.25, 30, 'Y', 'IT', 'New York' );

INSERT INTO employee ( emp_id, first_name, last_name, salary, department ) VALUES ( 102, 'Alice', 'Smith', 60000, 'HR' );

INSERT ALL 
INTO employee (emp_id, first_name, last_name, salary, department) VALUES ( 103, 'Robert', 'Brown', 45000, 'Finance' )
INTO employee (emp_id, first_name, last_name, salary, department) VALUES ( 104, 'Emma', 'Wilson', 70000, 'IT' )
INTO employee (emp_id, first_name, last_name, salary, department) VALUES ( 105, 'David', 'Lee', 52000, 'Marketing' )
SELECT * FROM dual;

INSERT INTO employee ( emp_id, first_name, last_name, salary, department, email ) VALUES ( 106,'Chris', 'Green', 48000, 'Sales', NULL );

SELECT * FROM employee;

SELECT first_name, salary
FROM employee;

SELECT *
FROM employee
WHERE salary > 50000;

SELECT *
FROM employee
ORDER BY salary DESC;

SELECT department, AVG(salary)
FROM employee
GROUP BY department;

UPDATE employee
SET salary = 65000
WHERE emp_id = 102;

UPDATE employee
SET department = 'Management',
    salary = 75000
WHERE emp_id = 104;

DELETE FROM employee
WHERE emp_id = 106;

ALTER TABLE employee
ADD gender VARCHAR2(10);

ALTER TABLE employee
MODIFY salary NUMBER(12,2);

ALTER TABLE employee
RENAME COLUMN phone TO contact_number;

ALTER TABLE employee
DROP COLUMN bonus;

UPDATE employee
SET salary = salary + 5000
WHERE department = 'IT';

SAVEPOINT after_increment;

UPDATE employee
SET salary = salary + 2000
WHERE department = 'HR';

ROLLBACK TO after_increment;

COMMIT;

TRUNCATE TABLE employee;

RENAME employee TO employee_data;

DROP TABLE employee_data;

GRANT SELECT, INSERT, UPDATE
ON employee
TO user1;

REVOKE INSERT
ON employee
FROM user1;
