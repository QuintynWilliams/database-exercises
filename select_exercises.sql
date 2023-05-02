USE codeup_test_db;

# TODO: The name of all albums by Pink Floyd.
SELECT * FROM albums WHERE artist = 'Pink Floyd';

# TODO: The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

# TODO: The genre for Nevermind
SELECT genre FROM albums WHERE name = 'Nevermind';

# TODO: Which albums were released in the 1990s
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

# TODO: Which albums had less than 20 million certified sales
SELECT * FROM albums WHERE sales > 20.0;

# TODO: All the albums with a genre of "Rock"
SELECT * FROM albums WHERE genre = 'Rock';

