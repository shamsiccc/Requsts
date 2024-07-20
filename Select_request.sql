SELECT name, duration 
FROM tracks
WHERE duration = (SELECT max(duration) FROM tracks);

SELECT name, duration 
FROM tracks 
WHERE duration >= 210;

SELECT title 
FROM compilations
WHERE compilation_release BETWEEN '2018-01-01' AND '2020-12-31';

SELECT name 
FROM singers 
WHERE name NOT LIKE '% %';

SELECT name 
FROM tracks
WHERE name LIKE '%Мой%' OR name LIKE '%My%';

SELECT genre_id, COUNT(*) AS singer_count
FROM singer_genre
GROUP BY genre_id;

SELECT COUNT(*) AS track_count 
FROM tracks 
WHERE album_id IN (
	SELECT album_id
	FROM albums
	WHERE album_release BETWEEN '2019-01-01' AND '2020-12-31');

SELECT album_id, AVG(duration) AS average_duration 
FROM tracks
GROUP BY album_id;

SELECT DISTINCT s.singer_id
FROM singers s
WHERE s.singer_id NOT IN (
    SELECT sa.singer_id
    FROM singer_album sa
    JOIN albums a ON sa.album_id = a.album_id
    WHERE a.album_release BETWEEN '2020-01-01' AND '2020-12-31');
    
SELECT c.title
FROM compilations c
JOIN tracks t ON c.compilation_id = t.track_id
JOIN singers p ON t.track_id = p.singer_id
WHERE p.name = 'SkillGuy';