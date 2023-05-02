USE codeup_test_db;

# TODO: All albums in your table.
    SELECT name FROM albums;

# TODO: All albums released before 1980
    SELECT name FROM albums WHERE release_date < '1980';
    UPDATE albums SET sales * 10;

# TODO: All albums by Michael Jackson
    SELECT name FROM albums WHERE artist = 'Michael Jackson';
    UPDATE albums SET sales * 10;



# TODO: Make all the albums 10 times more popular (sales * 10)Make all the albums 10 times more popular (sales * 10)
    UPDATE albums SET sales = (sales * 10) WHERE sales < 100;

# TODO: Move all the albums before 1980 back to the 1800s.Move all the albums before 1980 back to the 1800s.
    UPDATE albums SET release_date = (release_date - 100) WHERE release_date < 1980;

# TODO: Change 'Michael Jackson' to 'Peter Jackson'
    UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

