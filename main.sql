CREATE TABLE departments (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    department_id INT
);

INSERT INTO departments VALUES
(1,'IT'),(2,'HR');

INSERT INTO employees VALUES
(1,'Ali',1),(2,'Vali',1),(3,'Sami',2);

SELECT d.name, COUNT(e.id) AS total_employees
FROM departments d
INNER JOIN employees e ON d.id = e.department_id
GROUP BY d.name
HAVING COUNT(e.id) > 1;
