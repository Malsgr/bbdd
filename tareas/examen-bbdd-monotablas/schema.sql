DROP TABLE IF EXISTS usuarios;
CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    edad INTEGER NOT NULL CHECK(edad >= 0),
    nombre TEXT NOT NULL,
    apellido TEXT NOT NULL,
    verificado TEXT NOT NULL,
    baneado TEXT NOT NULL,
    pais TEXT,
    ciudad TEXT,
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    rol TEXT NOT NULL CHECK "admin" OR "moderador" OR "usuario",
    saldo REAL NOT NULL CHECK(saldo >= 0) AND (saldo <= 9999)
);