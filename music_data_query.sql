DROP TABLE IF EXISTS music_data;

CREATE TABLE music_data(
	orig_index REAL,
	year INT,
	acousticness REAL,
	artists VARCHAR(700),
	danceability REAL,
	duration_ms REAL,
	energy REAL,
	explicit REAL,
	instrumentalness REAL,
	loudness REAL,
	name NAME,
	popularity REAL,
	tempo REAL
);

SELECT * FROM music_data;

DROP TABLE IF EXISTS info_by_decade;
CREATE TABLE info_by_decade(
	decade VARCHAR(5),
	average_acousticness REAL,
	average_danceability REAL,
	average_duration REAL,
	average_energy REAL,
	average_explicit REAL,
	average_instrumentalness REAL,
	average_loudness REAL,
	average_tempo REAL
);

INSERT INTO info_by_decade(decade)
VALUES ('60s'), ('70s'), ('80s'), ('90s'), ('00s'), ('10s');

SELECT * FROM info_by_decade;

--Average Acousticness
UPDATE info_by_decade
SET average_acousticness = (SELECT AVG(acousticness)
FROM music_data
WHERE year BETWEEN 1960 and 1969)
WHERE decade = '60s';

UPDATE info_by_decade
SET average_acousticness = (SELECT AVG(acousticness)
FROM music_data
WHERE year BETWEEN 1970 and 1979)
WHERE decade = '70s';

UPDATE info_by_decade
SET average_acousticness = (SELECT AVG(acousticness)
FROM music_data
WHERE year BETWEEN 1980 and 1989)
WHERE decade = '80s';

UPDATE info_by_decade
SET average_acousticness = (SELECT AVG(acousticness)
FROM music_data
WHERE year BETWEEN 1990 and 1999)
WHERE decade = '90s';

UPDATE info_by_decade
SET average_acousticness = (SELECT AVG(acousticness)
FROM music_data
WHERE year BETWEEN 2000 and 2009)
WHERE decade = '00s';

UPDATE info_by_decade
SET average_acousticness = (SELECT AVG(acousticness)
FROM music_data
WHERE year BETWEEN 2010 and 2019)
WHERE decade = '10s';

--Average Danceability 
UPDATE info_by_decade
SET average_danceability = (SELECT AVG(danceability)
FROM music_data
WHERE year BETWEEN 1960 and 1969)
WHERE decade = '60s';

UPDATE info_by_decade
SET average_danceability = (SELECT AVG(danceability)
FROM music_data
WHERE year BETWEEN 1970 and 1979)
WHERE decade = '70s';

UPDATE info_by_decade
SET average_danceability = (SELECT AVG(danceability)
FROM music_data
WHERE year BETWEEN 1980 and 1989)
WHERE decade = '80s';

UPDATE info_by_decade
SET average_danceability = (SELECT AVG(danceability)
FROM music_data
WHERE year BETWEEN 1990 and 1999)
WHERE decade = '90s';

UPDATE info_by_decade
SET average_danceability = (SELECT AVG(danceability)
FROM music_data
WHERE year BETWEEN 2000 and 2009)
WHERE decade = '00s';

UPDATE info_by_decade
SET average_danceability = (SELECT AVG(danceability)
FROM music_data
WHERE year BETWEEN 2010 and 2019)
WHERE decade = '10s';

--Average Duration
UPDATE info_by_decade
SET average_duration = (SELECT AVG(duration_ms)
FROM music_data
WHERE year BETWEEN 1960 and 1969)
WHERE decade = '60s';

UPDATE info_by_decade
SET average_duration = (SELECT AVG(duration_ms)
FROM music_data
WHERE year BETWEEN 1970 and 1979)
WHERE decade = '70s';

UPDATE info_by_decade
SET average_duration = (SELECT AVG(duration_ms)
FROM music_data
WHERE year BETWEEN 1980 and 1989)
WHERE decade = '80s';

UPDATE info_by_decade
SET average_duration = (SELECT AVG(duration_ms)
FROM music_data
WHERE year BETWEEN 1990 and 1999)
WHERE decade = '90s';

UPDATE info_by_decade
SET average_duration = (SELECT AVG(duration_ms)
FROM music_data
WHERE year BETWEEN 2000 and 2009)
WHERE decade = '00s';

UPDATE info_by_decade
SET average_duration = (SELECT AVG(duration_ms)
FROM music_data
WHERE year BETWEEN 2010 and 2019)
WHERE decade = '10s';

--Average Energy
UPDATE info_by_decade
SET average_energy = (SELECT AVG(energy)
FROM music_data
WHERE year BETWEEN 1960 and 1969)
WHERE decade = '60s';

UPDATE info_by_decade
SET average_energy = (SELECT AVG(energy)
FROM music_data
WHERE year BETWEEN 1970 and 1979)
WHERE decade = '70s';

UPDATE info_by_decade
SET average_energy = (SELECT AVG(energy)
FROM music_data
WHERE year BETWEEN 1980 and 1989)
WHERE decade = '80s';

UPDATE info_by_decade
SET average_energy = (SELECT AVG(energy)
FROM music_data
WHERE year BETWEEN 1990 and 1999)
WHERE decade = '90s';

UPDATE info_by_decade
SET average_energy = (SELECT AVG(energy)
FROM music_data
WHERE year BETWEEN 2000 and 2009)
WHERE decade = '00s';

UPDATE info_by_decade
SET average_energy = (SELECT AVG(energy)
FROM music_data
WHERE year BETWEEN 2010 and 2019)
WHERE decade = '10s';

--Average Explicit 
UPDATE info_by_decade
SET average_explicit = (SELECT AVG(explicit)
FROM music_data
WHERE year BETWEEN 1960 and 1969)
WHERE decade = '60s';

UPDATE info_by_decade
SET average_explicit = (SELECT AVG(explicit)
FROM music_data
WHERE year BETWEEN 1970 and 1979)
WHERE decade = '70s';

UPDATE info_by_decade
SET average_explicit = (SELECT AVG(explicit)
FROM music_data
WHERE year BETWEEN 1980 and 1989)
WHERE decade = '80s';

UPDATE info_by_decade
SET average_explicit = (SELECT AVG(explicit)
FROM music_data
WHERE year BETWEEN 1990 and 1999)
WHERE decade = '90s';

UPDATE info_by_decade
SET average_explicit = (SELECT AVG(explicit)
FROM music_data
WHERE year BETWEEN 2000 and 2009)
WHERE decade = '00s';

UPDATE info_by_decade
SET average_explicit = (SELECT AVG(explicit)
FROM music_data
WHERE year BETWEEN 2010 and 2019)
WHERE decade = '10s';

--Average instrumentalness
UPDATE info_by_decade
SET average_instrumentalness = (SELECT AVG(instrumentalness)
FROM music_data
WHERE year BETWEEN 1960 and 1969)
WHERE decade = '60s';

UPDATE info_by_decade
SET average_instrumentalness = (SELECT AVG(instrumentalness)
FROM music_data
WHERE year BETWEEN 1970 and 1979)
WHERE decade = '70s';

UPDATE info_by_decade
SET average_instrumentalness = (SELECT AVG(instrumentalness)
FROM music_data
WHERE year BETWEEN 1980 and 1989)
WHERE decade = '80s';

UPDATE info_by_decade
SET average_instrumentalness = (SELECT AVG(instrumentalness)
FROM music_data
WHERE year BETWEEN 1990 and 1999)
WHERE decade = '90s';

UPDATE info_by_decade
SET average_instrumentalness = (SELECT AVG(instrumentalness)
FROM music_data
WHERE year BETWEEN 2000 and 2009)
WHERE decade = '00s';

UPDATE info_by_decade
SET average_instrumentalness = (SELECT AVG(instrumentalness)
FROM music_data
WHERE year BETWEEN 2010 and 2019)
WHERE decade = '10s';

--Average loudness
UPDATE info_by_decade
SET average_loudness = (SELECT AVG(loudness)
FROM music_data
WHERE year BETWEEN 1960 and 1969)
WHERE decade = '60s';

UPDATE info_by_decade
SET average_loudness = (SELECT AVG(loudness)
FROM music_data
WHERE year BETWEEN 1970 and 1979)
WHERE decade = '70s';

UPDATE info_by_decade
SET average_loudness = (SELECT AVG(loudness)
FROM music_data
WHERE year BETWEEN 1980 and 1989)
WHERE decade = '80s';

UPDATE info_by_decade
SET average_loudness = (SELECT AVG(loudness)
FROM music_data
WHERE year BETWEEN 1990 and 1999)
WHERE decade = '90s';

UPDATE info_by_decade
SET average_loudness = (SELECT AVG(loudness)
FROM music_data
WHERE year BETWEEN 2000 and 2009)
WHERE decade = '00s';

UPDATE info_by_decade
SET average_loudness = (SELECT AVG(loudness)
FROM music_data
WHERE year BETWEEN 2010 and 2019)
WHERE decade = '10s';

--Average tempo
UPDATE info_by_decade
SET average_tempo = (SELECT AVG(tempo)
FROM music_data
WHERE year BETWEEN 1960 and 1969)
WHERE decade = '60s';

UPDATE info_by_decade
SET average_tempo = (SELECT AVG(tempo)
FROM music_data
WHERE year BETWEEN 1970 and 1979)
WHERE decade = '70s';

UPDATE info_by_decade
SET average_tempo = (SELECT AVG(tempo)
FROM music_data
WHERE year BETWEEN 1980 and 1989)
WHERE decade = '80s';

UPDATE info_by_decade
SET average_tempo = (SELECT AVG(tempo)
FROM music_data
WHERE year BETWEEN 1990 and 1999)
WHERE decade = '90s';

UPDATE info_by_decade
SET average_tempo = (SELECT AVG(tempo)
FROM music_data
WHERE year BETWEEN 2000 and 2009)
WHERE decade = '00s';

UPDATE info_by_decade
SET average_tempo = (SELECT AVG(tempo)
FROM music_data
WHERE year BETWEEN 2010 and 2019)
WHERE decade = '10s';

SELECT * FROM info_by_decade;
