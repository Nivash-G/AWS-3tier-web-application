CREATE DATABASE IF NOT EXISTS employee_db;
USE employee_db;

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department VARCHAR(50),
    job_title VARCHAR(100),
    salary DECIMAL(10,2),
    hire_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO employees
(first_name,last_name,email,department,job_title,salary,hire_date)
VALUES
('Nivash','G','nivash@example.com','DevOps','Cloud Engineer',65000.00,'2026-07-14'),
('John','Doe','john@example.com','Cloud','AWS Engineer',70000.00,'2026-01-10'),
('Alice','Smith','alice@example.com','HR','HR Executive',50000.00,'2025-11-15');
