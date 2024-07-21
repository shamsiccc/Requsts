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

SELECT count(*) FROM tracks t
LEFT JOIN albums a ON a.album_id = t.album_id
WHERE album_release BETWEEN '2019-01-01' AND '2020-12-31';

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
    
SELECT s.name AS singer_name, c.title AS compilation_title
FROM singers s
JOIN singer_genre g ON s.singer_id = g.singer_id
JOIN singer_album sa ON s.singer_id = sa.singer_id
JOIN albums a ON sa.album_id = a.album_id
JOIN tracks t ON a.album_id = t.album_id
JOIN compilation_tracks ct ON t.track_id = ct.track_id
JOIN compilations c ON ct.compilation_id = c.compilation_id
WHERE s.name = 'Lana Del Rey'
GROUP BY singer_name, compilation_title;