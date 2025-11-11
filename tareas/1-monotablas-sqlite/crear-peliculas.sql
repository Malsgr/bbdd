DROP TABLE peliculas;
CREATE TABLE peliculas (
    id INTEGER PRIMARY KEY,
    title TEXT,
    director TEXT,
    year INTEGER CHECK (year >= 0),
    rating REAL CHECK (rating >= 0)
);
