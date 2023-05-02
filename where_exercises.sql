USE employees;

SHOW TABLES;

# # Wild card anything before % or after %
# SELECT first_name FROM employees WHERE first_name LIKE 'sus%';
# # BETWEEN shows > START and < END, OR < START and > END
# # SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 AND 10082;
# SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10082 AND 10026;
# # Instead of using OR clause use in to select multipl cases
# SELECT emp_no, first_name, last_name FROM employees WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');
#
# SELECT emp_no, first_name, last_name FROM employees WHERE emp_no < 20000
#                                      AND last_name IN ('Herber', 'Baek')
#                                      OR first_name = 'Shridhar' AND emp_no < 20000;
#
# SELECT * FROM salaries WHERE salary BETWEEN 50000 AND 100000;
# SELECT * FROM salaries WHERE salary NOT BETWEEN 50000 AND 100000;

# PART ONE
# TODO: Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# TODO: Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%';

# TODO: Find all employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%';


# PART TWO
# TODO: Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

# TODO: Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT *
FROM employees
WHERE (first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya')
          AND gender = 'M';

# TODO: Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';

# TODO: Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' —
#  899 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   AND last_name LIKE '%E';


# TODO: Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
   AND last_name NOT LIKE '%qu%';

