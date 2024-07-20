CREATE TABLE IF NOT EXISTS genres (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS singers (
    singer_id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS albums (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(40) NOT NULL,
    release_year INT NOT NULL
    );
    
CREATE TABLE IF NOT EXISTS compilations (
    compilation_id SERIAL PRIMARY KEY,
    title VARCHAR(40) NOT NULL,
    release_year INT NOT NULL
    );

CREATE TABLE IF NOT EXISTS tracks (
    track_id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    album_id INT REFERENCES albums(album_id) ON DELETE CASCADE,
    duration INT NOT NULL
);

CREATE TABLE IF NOT EXISTS singer_genre (
    singer_genre_id SERIAL PRIMARY KEY,
    singer_id INT NOT NULL,
    genre_id INT NOT NULL,
    CONSTRAINT fk_singer_genre_singer FOREIGN KEY(singer_id) REFERENCES singers(singer_id) ON DELETE CASCADE,
    CONSTRAINT fk_singer_genre_genre FOREIGN KEY(genre_id) REFERENCES genres(genre_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS singer_album (
    singer_album_id SERIAL PRIMARY KEY,
    singer_id INT NOT NULL,
    album_id INT NOT NULL,
    CONSTRAINT fk_singer_album_singer FOREIGN KEY(singer_id) REFERENCES singers(singer_id) ON DELETE CASCADE,
    CONSTRAINT fk_singer_album_album FOREIGN KEY(album_id) REFERENCES albums(album_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS compilation_tracks (
    compilation_track_id SERIAL PRIMARY KEY,
    compilation_id INT NOT NULL,
    track_id INT NOT NULL,
    CONSTRAINT fk_compilation_tracks_compilation FOREIGN KEY(compilation_id) REFERENCES compilations(compilation_id) ON DELETE CASCADE,
    CONSTRAINT fk_compilation_tracks_track FOREIGN KEY(track_id) REFERENCES tracks(track_id) ON DELETE CASCADE
);