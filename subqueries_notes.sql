
# Use employees;
#
# # SELECT managers birthdays
# # HARD CODE
#     SELECT birth_date FRom employees
#         WHERE emp_no IN (
#             110022, 110039, 110085, 110114, 110183, 110228, 110303, 110344,
#             110386, 110420, 110511, 110567, 110725, 110765, 110800, 110854,
#             111035, 111133, 111400, 111534, 111692, 111784, 111877, 111939
#         );
#
# # Subquery, responsive to changes and legibility, as above emp_no are abstruse
#     SELECT birth_date FROM employees
#         WHERE emp_no in (SELECT emp_no FROM dept_manager);
#
#     SELECT CONCAT(first_name, ' ', last_name) AS 'FULL NAME', birth_date AS 'BIRTHDAY' FROM employees
#         WHERE emp_no in (SELECT emp_no FROM dept_manager);

# INSERT INTO users_albums (user_id, album_id) VALUES (7, 21);
#
# INSERT INTO users_albums (user_id, album_id) VALUES (
#                             (SELECT id FROM users WHERE username = 'lisa_green'),
#                             (SELECT id FROM albums WHERE artist = 'Madonna'
#                                 AND name = 'The Immaculate Collection')
#                             );

USE codeup_test_db;

INSERT INTO users_albums (user_id, album_id) VALUES (
                            (SELECT id FROM users WHERE username = 'lisa_green'),
                            (SELECT id FROM albums WHERE artist = 'Madonna'
                                AND name = 'The Immaculate Collection')
                            );