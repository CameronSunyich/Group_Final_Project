DROP TABLE IF EXISTS music_data;

CREATE TABLE music_data(
	valence REAL,
	year INT,
	acousticness REAL,
	artists VARCHAR(700),
	danceability REAL,
	duration_ms REAL,
	energy REAL,
	explicit REAL,
	id VARCHAR(255),
	instrumentalness REAL,
	key REAL,
	liveness REAL,
	loudness REAL,
	mode REAL,
	name NAME,
	popularity REAL,
	speechiness REAL,
	tempo REAL
);

SELECT * FROM music_data
WHERE (year BETWEEN 1960 AND 2020);