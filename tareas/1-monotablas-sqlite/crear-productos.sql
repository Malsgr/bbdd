CREATE TABLE productos (
    id INTEGER PRIMARY KEY,
    name TEXT,
    price REAL CHECK (price >= 0),
    stock INTEGER,
    sale TEXT
);