USE employees;

SHOW TABLES;
# Lecture Notes
# # CONCAT concatonates two or more fields into one
# SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE first_name = 'Maya';
#
# # DATE DIFF displays the difference of two dates in days
# # Determine length of employement (assuming current employees)
# SELECT DATEDIFF(NOW(), hire_date) / 365 FROM employees;
#
# # Determine age with date now and a birthday value, /365 returns in years
# SELECT DATEDIFF(NOW(), birth_date) / 365 FROM employees;

# TODO: Modify your first query to order by first name. The first result should be Irena Flexer and the last result should be Vidya Awdeh.
SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

# TODO: Find all employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE MONTH(birth_date) = 12
                          AND DAY(birth_date) = 25;

# TODO: Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees WHERE (YEAR(hire_date) BETWEEN 1990 AND 2000)
                          AND (MONTH(birth_date) = 12 AND DAY(birth_date) = 25);


# TODO: Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT * FROM employees WHERE (YEAR(hire_date) BETWEEN 1990 AND 2000)
                          AND (MONTH(birth_date) = 12 AND DAY(birth_date) = 25)
                        ORDER BY birth_date ASC, hire_date DESC;

# TODO: For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT DATEDIFF(NOW(), hire_date) FROM employees;