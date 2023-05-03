USE employees;

SHOW TABLES;

# GROUP BY combines duplicates into one value for each group
# Consolidate rows based on a common column
SELECT last_name FROM employees GROUP BY last_name;

SELECT COUNT(first_name) FROM employees;

# Counts number of values for each last name
SELECT last_name, COUNT(first_name) FROM employees GROUP BY last_name;

# No per employees gender
SELECT gender, COUNT(first_name) FROM employees GROUP BY gender;

# Youngest person to be hired
SELECT MIN(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;

# Oldest person to be hired
SELECT MAX(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;

# Average age of all employees
SELECT MAX(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;
