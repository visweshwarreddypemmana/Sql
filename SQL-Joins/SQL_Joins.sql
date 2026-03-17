SELECT *
FROM EMPLOYEE e, DEPARTMENT d
WHERE e.dept_id = d.dept_id;


SELECT *
FROM EMPLOYEE e, DEPARTMENT d
WHERE e.dept_id = d.dept_id(+);


SELECT *
FROM EMPLOYEE e, DEPARTMENT d
WHERE e.dept_id(+) = d.dept_id;


SELECT *
FROM EMPLOYEE e, DEPARTMENT d
WHERE e.dept_id = d.dept_id(+)

UNION

SELECT *
FROM EMPLOYEE e, DEPARTMENT d
WHERE e.dept_id(+) = d.dept_id;


SELECT *
FROM EMPLOYEE e, DEPARTMENT d
WHERE e.salary > 50000;


SELECT *
FROM EMPLOYEE e1, EMPLOYEE e2
WHERE e1.manager_id = e2.emp_id;


SELECT *
FROM EMPLOYEE e, DEPARTMENT d;
