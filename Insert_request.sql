INSERT INTO genres (title)
	VALUES('Rock'),
	('Pop'),
	('Jazz');
	
INSERT INTO singers (name) 
	VALUES('SkillGuy'),
	('Lui Armstrong'),
	('Charlie Peacock'),
	('Lana Del Rey');
	
INSERT INTO singer_genre (singer_id, genre_id) 
	VALUES(1, 1),
	(2, 3),
	(3, 3),
	(4, 2);
	
INSERT INTO albums (title, album_release) 
	VALUES('Rocking Out', '2020-10-30'),
	('Pop Hits', '2021-12-31'),
	('Jazz Classics', '2020-11-09');

INSERT INTO singer_album (singer_id, album_id) 
	VALUES(1, 1),
	(2, 3),
	(3, 3),
	(4, 2);
	
INSERT INTO tracks (name, album_id, duration, track_release) 
	VALUES('Iron rain', 1, 210, '2020-01-05'),
	('My love', 2, 148, '2019-03-12'),
	('Jazz alley', 3, 120, '2019-10-09'),
	('Grace Over Karma', 3, 153, '2019-04-05'),
	('Rockers anthem', 1, 180, '2020-09-21'),
	('Summertime sadness', 2, 246, '2013-08-23');
	
INSERT INTO compilations (title, compilation_release)
	VALUES('Best of 2021', '2021-12-31'),
	('Jazz Vibes', '2022-09-02'),
	('Ultimate songs', '2019-04-29'),
	('Relaxing music', '2023-09-15');
	
INSERT INTO compilation_tracks (compilation_id, track_id)
	VALUES(1, 3),
	(1, 5),
	(2, 2),
	(2, 6),
	(3, 1),
	(3, 4),
	(4, 3),
	(4, 6);