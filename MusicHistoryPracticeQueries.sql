-- 1 -- SELECT * FROM Genre;

-- 2 -- SELECT * FROM Artist order by ArtistName;

/* 3 -- SELECT s.Title, 
	a.ArtistName 
FROM Song s 
	LEFT JOIN Artist a on s.ArtistId = a.id;
*/


/* 4-- SELECT a.ArtistName FROM Artist a 
	LEFT JOIN Album al on al.ArtistId = a.id
	WHERE al.GenreId = 7;
*/

/* 5 -- SELECT a.ArtistName FROM Artist a
	LEFT JOIN Album al on al.ArtistId = a.id
	WHERE al.GenreId = 4 or al.GenreId = 2;
*/

/* 6 -- SELECT al.Title, a.ArtistName FROM Album al LEFT JOIN Song s on s.AlbumId = al.Id LEFT JOIN Artist a on a.Id = al.ArtistId
	WHERE s.Title IS NULL;
*/

-- 7 -- INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Phoebe Bridgers', 2017);

-- 8 -- INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Stranger in the Alps', '09/22/2017', 2655, 'Dead Oceans', 29, 1);

-- 9 -- INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Motion Sickness', 229, '09/22/2017', 1, 29, 24);
-- INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Smoke Signals', 324, '09/22/2017', 1, 29, 24);

/* -- 10 -- SELECT al.Title, s.Title, a.ArtistName FROM Artist a 
	LEFT JOIN Album al on al.ArtistId = a.id
	LEFT JOIN Song s on s.AlbumId = al.Id
	WHERE a.id = 29;
*/

/* --11 --SELECT COUNT(s.Id) as SongCount, a.ArtistName, al.Title
	FROM Song s 
		LEFT JOIN Album al on s.AlbumId = al.Id
		LEFT JOIN Artist a on a.Id = al.ArtistId
	GROUP BY al.Title, a.ArtistName;
*/

/* 12 --SELECT COUNT(s.Id), a.ArtistName FROM Song s 
	LEFT JOIN Artist a on a.Id = s.ArtistId
	GROUP BY a.ArtistName;
*/

/* 13 -- SELECT COUNT(s.Id), g.Label FROM Genre g
	LEFT JOIN Song s on s.GenreId = g.Id
	GROUP BY g.Label;
*/

/* 14 -- 
SELECT COUNT(distinct al.Label) as LabelsReleasedOn, a.ArtistName
	FROM Artist a 
		LEFT JOIN Album al on al.ArtistId = a.Id
	GROUP BY a.ArtistName
	HAVING COUNT(distinct al.Label) > 1;
*/

/* 15 -- SELECT Title, AlbumLength FROM Album
	WHERE AlbumLength = (SELECT MAX(AlbumLength) FROM Album);
*/

-- 16
/*
*/
SELECT s.Title as SongTitle, s.SongLength, al.Title as AlbumTitle 
	FROM Song s INNER JOIN Album al on s.AlbumId = al.Id
	WHERE SongLength = (SELECT MAX(SongLength) FROM Song);

SELECT top 1 Title, SongLength
	FROM Song
	ORDER BY SongLength desc;
