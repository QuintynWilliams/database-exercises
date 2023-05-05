USE employees;

SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM employees;

# TODO: Show each department along with the name of the current manager for that department.
SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager' FROM dept_manager mgr
    JOIN dept_emp de
        ON de.emp_no = mgr.emp_no
    JOIN departments d
        ON d.dept_no = de.dept_no
    JOIN employees e
        ON mgr.emp_no = e.emp_no
    WHERE mgr.to_date > NOW()
    ORDER BY dept_name ASC;

# TODO: Find the name of all departments currently managed by women.
SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager' FROM dept_manager mgr
    JOIN dept_emp de
        ON de.emp_no = mgr.emp_no
    JOIN departments d
        ON d.dept_no = de.dept_no
    JOIN employees e
        ON mgr.emp_no = e.emp_no
    WHERE mgr.to_date > NOW()
      AND e.gender = 'F'
    ORDER BY dept_name ASC;

# TODO: Find the "current" TITLES of EMPLOYEES currently working in the "Customer Service" DEPARTMENT.
SELECT title AS 'title', COUNT(role.emp_no) AS 'Total' FROM titles role
   JOIN employees e
        ON e.emp_no = role.emp_no
   JOIN dept_emp de
        ON de.emp_no = role.emp_no
   WHERE role.to_date > NOW()
        AND  de.dept_no = 'd009'
   GROUP BY title;

# TODO: Find the current salary of all current managers.
SELECT dept_name AS 'Department Name',
       CONCAT(first_name, ' ', last_name) AS 'Department Manager',
        salary AS 'Salary'
    FROM dept_manager mgr
   JOIN dept_emp de
        ON de.emp_no = mgr.emp_no
   JOIN departments d
        ON d.dept_no = de.dept_no
   JOIN employees e
        ON mgr.emp_no = e.emp_no
   JOIN salaries s
        ON s.emp_no = e.emp_no
    WHERE mgr.to_date > NOW() AND s.to_date > NOW()
    ORDER BY dept_name ASC;

# TODO: [BONUS] Find the names of all current employees, their department name, and their current manager's name .


