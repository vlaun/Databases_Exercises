USE codeup_test_db;

SELECT 'Albums released after 1991';
SELECT name
FROM albums
WHERE release_date > 1991;


SELECT 'Albums with the genre "disco"';
SELECT name
FROM albums
WHERE genre = 'disco';

SELECT 'Albums by Whitney Houston';
SELECT name
FROM albums
WHERE artist = 'Whitney Houston';




SELECT 'Albums released after 1991';
DELETE FROM albums
WHERE release_date > 1991;


SELECT 'Albums with the genre "disco"';
DELETE FROM albums
WHERE genre = 'disco';

SELECT 'Albums by Whitney Houston';
DELETE FROM albums
WHERE artist = 'Whitney Houston';


