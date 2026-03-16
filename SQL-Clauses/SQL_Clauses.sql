SELECT *
FROM employee;

SELECT first_name, last_name, salary
FROM employee;

SELECT first_name, department
FROM employee;

SELECT DISTINCT department
FROM employee;

SELECT first_name, salary
FROM employee
WHERE salary > 50000;

SELECT first_name, department
FROM employee
WHERE department = 'IT';

SELECT department, AVG(salary)
FROM employee
GROUP BY department;

SELECT department, AVG(salary)
FROM employee
GROUP BY department
HAVING AVG(salary) > 50000;

SELECT first_name, salary
FROM employee
ORDER BY salary ASC;

SELECT first_name, salary
FROM employee
ORDER BY salary DESC;

SELECT first_name, salary
FROM employee
ORDER BY salary
OFFSET 2 ROWS FETCH NEXT 3 ROWS ONLY;
