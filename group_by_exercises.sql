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


# TODO: In your script, use DISTINCT to find the unique titles in the titles table.
SELECT DISTINCT title FROM titles;

# TODO: Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY.
SELECT DISTINCT last_name FROM employees
                          WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
                          GROUP BY last_name;

# TODO: Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
SELECT DISTINCT (CONCAT(first_name, ' ', last_name)) FROM employees
                          WHERE (last_name LIKE 'E%' AND last_name LIKE '%E')

# TODO: Find the unique last names with a 'q' but not 'qu'.
SELECT DISTINCT last_name FROM employees
                          WHERE last_name LIKE '%q%'
                            AND last_name NOT LIKE '%qu%';

# TODO: Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT last_name, COUNT(first_name) FROM employees
                          WHERE last_name LIKE '%q%'
                            AND last_name NOT LIKE '%qu%'
                          GROUP BY last_name;

# TODO: Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.
SELECT gender, COUNT(gender) FROM employees
                             WHERE first_name = 'Irena'
                                OR first_name = 'Vidya'
                                OR first_name = 'Maya'
                             GROUP BY gender;
