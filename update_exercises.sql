USE codeup_test_db;
SELECT 'All albums in your table.';
SELECT name
FROM albums;


SELECT 'All albums released before 1980.';
SELECT name
FROM albums
WHERE release_date BETWEEN '1970' AND '1980';

SELECT 'All albums by Michael Jackson.';
SELECT name
FROM albums
WHERE artist = 'Michael Jackson';


UPDATE albums
SET sales =  sales * 10;
SELECT 'All the albums are 10 times more popular';



UPDATE albums,
SET 'release_date = 1800,
WHERE date >= 1980;
SELECT 'All albums released before 1980 have been changed to a release date in the 1800s.';



UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT 'Updated the artist "Michael Jackson" to "Peter Jackson";