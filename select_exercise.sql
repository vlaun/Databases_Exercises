USE codeup_test_db;
SELECT 'The name of all albums by Pink Floyd.';
SELECT release_date
FROM albums
WHERE artist = 'Pink Floyd';


SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released.';
SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind.';
SELECT genre
FROM albums
WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s?';
SELECT name
FROM albums
WHERE release_date BETWEEN '1990' AND '1999';

SELECT 'Which albums had less than 20 million certified sales?';
SELECT name
FROM albums
WHERE sales < 20000000;

SELECT 'All the albums in the rock genre. Is this all the rock albums in the table?';
SELECT name
FROM albums
WHERE genre = 'Rock';


