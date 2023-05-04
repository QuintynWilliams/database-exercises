USE employees;

SELECT employees.last_name AS name, salaries.salary AS salary FROM employees JOIN salaries ON employees.emp_no =
                                                                                              salaries.emp_no;

# SELECT CONCAT(employees.first_name, ' ', employees.last_name) FROM employees JOIN salaries on ;

USE codeup_test_db;

CREATE TABLE roles (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
    );

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commentor');

ALTER TABLE users ADD COLUMN role_id INT UNSIGNED;
#tables need to be in the same database
#                                v est error check if assign doesnt exist
#                                                       Assign to v                 FROM v
ALTER TABLE users ADD CONSTRAINT fk_users_role_id FOREIGN KEY (role_id) REFERENCES roles(id);


UPDATE users SET role_id = 1 WHERE id = 1;
UPDATE users SET role_id = 2 WHERE id = 3;
UPDATE users SET role_id = 3 WHERE id = 5;
UPDATE users SET role_id = 4 WHERE id = 7;
UPDATE users SET role_id = 1 WHERE id = 9;
UPDATE users SET role_id = 2 WHERE id = 11;
UPDATE users SET role_id = 3 WHERE id = 13;
UPDATE users SET role_id = 4 WHERE id = 15;

# provides only those with associated values
SELECT users.username, roles.name FROM users JOIN roles ON users.role_id = roles.id;

# provides only all values
SELECT users.username, roles.name FROM users LEFT JOIN roles ON users.role_id = roles.id;

CREATE TABLE users_albums (
    user_id INT,
    album_id INT,
    CONSTRAINT users_albums_user_id_fk FOREIGN KEY (user_id) REFERENCES users (id),
    CONSTRAINT users_albums_album_id_fk FOREIGN KEY (album_id) REFERENCES users (id)
);

# COMPLETE_THE_CODE...
WHERE RAND() < 5/(SELECT COUNT(*) FROM albums)
GROUP BY u.id, a.id
HAVING COUNT(*) < 5 OR RAND() < 0.5;

SELECT users.username, albums.name FROM users
    JOIN users_albums ON users.id = users_albums.user_id
    JOIN albums ON users_albums.album_id = albums.id;

USE employees;

# JOIN EMPLOYEES AND DEPARTMENT TO GET SALARY OF EMPLOYEE IN Target Dept
SELECT CONCAT(first_name, ' ', last_name), salary
    FROM salaries s JOIN dept_emp de ON s.emp_no = de.emp_no
        JOIN departments d on de.dept_no = d.dept_no
        JOIN employees e on de.emp_no = e.emp_no
    WHERE d.dept_name = 'Research'
        AND s.to_date > NOW()
    ORDER BY salary DESC;
