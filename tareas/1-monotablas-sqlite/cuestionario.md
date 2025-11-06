# Cuestionario

## Tabla 1

### Imagina que queremos agregar una columna genre para el género de la película. ¿Cómo modificarías la tabla para incluir esta nueva columna?

Así
```sql
ALTER TABLE peliculas.csv ADD COLUMN genre TEXT;
```
Aunque también es muy fácil alterar el archivo .csv con csvkit o directamente en el editor de GitHuub.

### La columna genre ya existe, ¿hay algún problema con esto?

No, crearía otra columna más con el mismo nombre. Aunque entonces al añadir información a la columna, (asumo) el sql solo añadiría a la primera

### Imagina que ahora quieren que en lugar de genre sea genres, para permitir múltiples géneros por película. ¿Que nuevos problemas podrían surgir?

Se usaría el comando:
```sql
ALTER TABLE peliculas.csv RENAME COLUMN genre TO genres;
```
No se me ocurre ningún problema que pudiera surgir.

## Tabla 2

### Si quisiéramos agregar una columna category para el tipo de producto, ¿cómo lo harías? ¿hay algun problema con este cambio?

```sql
ALTER TABLE productos.csv ADD COLUMN category TEXT;
```
Exactamente lo mismo que en una den las preguntas anteriores, tampoco se me ocurren muchos posibles problemas.

### Si quisiéramos asegurarnos de que el precio nunca sea negativo, ¿cómo lo harías?

Al crear la tabla, habría que hacerlo con un sql, no manualmente como he estado haciendo yo hasta ahora. Habría que añadirle reglas al sql de creación de la tabla.
```sql
CREATE TABLE productos.csv (
    id INTEGER PRIMARY KEY,
    name TEXT,
    price REAL CHECK (price >= 0),
    stock INTEGER,
    sale INTEGRER
);
```
