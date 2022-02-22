USE codeup_test_db;

#Albums released after 1991
DELETE FROM albums WHERE release_date >1991;

#Albums with the genre 'disco'
DELETE FROM albums WHERE genre = 'disco';

#Albums by 'Whitney Houston' (...or maybe an artist of your choice)
DELETE FROM albums WHERE artist_name = 'Whitney Houston';






