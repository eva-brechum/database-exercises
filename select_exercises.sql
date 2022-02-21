USE codeup_test_db;

SELECT record_name FROM albums WHERE artist_name = 'Pink Floyd';
# --displays 'The Dark Side of the Moon and The Wall--

SELECT release_date FROM albums WHERE artist_name= 'Sgt Pepper''s Lonely Hearts Club Band.';

SELECT genre FROM albums WHERE artist_name = 'Nevermind';

SELECT * FROM albums WHERE release_date BETWEEN 1989 AND 2000;


SELECT record_name FROM albums WHERE sales <20;

SELECT record_name FROM albums WHERE genre = 'Rock'














