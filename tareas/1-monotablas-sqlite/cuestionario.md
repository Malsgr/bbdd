# Cuestionario

## Imagina que queremos agregar una columna genre para el género de la película. ¿Cómo modificarías la tabla para incluir esta nueva columna?

Así
```sql
ALTER TABLE peliculas ADD COLUMN genre TEXT;
```
Aunque también es muy fácil alterar el archivo .csv con csvkit o directamente en el editor de GitHuub.

## La columna genre ya existe, ¿hay algún problema con esto?

No, crearía otra columna más con el mismo nombre. Aunque entonces al añadir información a la columna, (asumo) el sql solo añadiría a la primera

## Imagina que ahora quieren que en lugar de genre sea genres, para permitir múltiples géneros por película. ¿Que nuevos problemas podrían surgir?

Se usaría el comando:
```sql
ALTER TABLE peliculas RENAME COLUMN genre TO genres;
```
No se me ocurre ningún problema que pudiera surgir.
