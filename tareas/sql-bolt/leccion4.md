# Lección 4

## Ejercicio 1

 List all directors of Pixar movies (alphabetically), without duplicates 

```sql
SELECT DISTINCT Director FROM movies ORDER BY Director;
```

## Ejercicio 2

List the last four Pixar movies released (ordered from most recent to least) 

```sql
SELECT Title FROM movies ORDER BY year DESC LIMIT 4;
```

## Ejercicio 3

List the first five Pixar movies sorted alphabetically 

```sql
SELECT Title FROM movies ORDER BY Title ASC LIMIT 5;
```

## Ejercicio 4

List the next five Pixar movies sorted alphabetically 

```sql
SELECT Title,year FROM movies ORDER BY Title ASC LIMIT 5 OFFSET 5;
```