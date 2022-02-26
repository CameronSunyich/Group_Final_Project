DROP TABLE IF EXISTS clustered_music_data;
CREATE TABLE clustered_music_data(
	orig_index REAL,
	class INT
);

SELECT * FROM clustered_music_data;

SELECT music_data.*, clustered_music_data.class 
FROM music_data
LEFT JOIN clustered_music_data 
ON clustered_music_data.orig_index = music_data.orig_index;
