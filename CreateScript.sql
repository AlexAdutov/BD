CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists (
	id SERIAL PRIMARY KEY,
	nickname VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS GenreArtists (
	genre_id INTEGER REFERENCES Genre(id),
	artists_id INTEGER REFERENCES Artists(id),
	CONSTRAINT pk PRIMARY KEY (genre_id, artists_id)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT null,
	year INTEGER
);

CREATE TABLE IF NOT EXISTS AlbumArtists (
	album_id INTEGER REFERENCES Album(id),
	artists_id INTEGER REFERENCES Artists(id),
	CONSTRAINT pkAA PRIMARY KEY (album_id, artists_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES Album(id),
	track_name VARCHAR(40) NOT null,
	duration TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT null,
	release_year INTEGER
);

CREATE TABLE IF NOT EXISTS TrackCollection (
	track_id INTEGER REFERENCES Tracks(id),
	collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT pkTC PRIMARY KEY (track_id, collection_id)
);