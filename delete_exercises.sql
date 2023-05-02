USE codeup_test_db;

# Write SELECT statements for:
# TODO: Albums released after 1991
    SELECT * FROM albums WHERE release_date > '1991';
    DELETE FROM albums WHERE release_date > '1991';

# TODO: Albums with the genre 'disco'
    SELECT * FROM albums WHERE genre = 'disco';
    DELETE FROM albums WHERE genre = 'disco';

# TODO: Albums by 'Whitney Houston' (...or maybe an artist of your choice)
    SELECT name FROM albums WHERE artist = 'The Eagles';
    DELETE FROM albums WHERE artist = 'The Eagles';
