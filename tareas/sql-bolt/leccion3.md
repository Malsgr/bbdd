# Lección 3

## Ejercicio 1
Find all the Toy Story movies
```sql
SELECT * FROM movies WHERE Title LIKE "%Toy Story%";
```
## Ejercicio 2
Find all the movies directed by John Lasseter 
```sql
SELECT * FROM movies WHERE Director LIKE "%John Lasseter%";
```
## Ejercicio 3
Find all the movies (and director) not directed by John Lasseter 
```sql
SELECT * FROM movies WHERE Director NOT LIKE "%John Lasseter%";
```
## Ejercicio 4
Find all the WALL-* movies 
```sql
SELECT * FROM movies WHERE Title LIKE "%WALL-%";
```