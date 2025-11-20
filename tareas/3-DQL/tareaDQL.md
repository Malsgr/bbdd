# Tarea 3-DQL

## Respuestas
### Ejercicio 1

```sql
SELECT username, password, email, ciudad FROM
usuarios;
```

### Ejercicio 2

```sql
SELECT email FROM usuarios WHERE ciudad="Madrid";
```

### Ejercicio 3

```sql
SELECT email FROM usuarios WHERE pais="España" AND edad > 30;
```

### Ejercicio 4

```sql
SELECT COUNT(*) FROM usuarios WHERE baneado= 1;
```

### Ejercio 5

```sql
SELECT * FROM usuarios WHERE DISTINCT pais;
```

### Ejercicio 6

```sql
SELECT * FROM usuarios WHERE DISTINCT ciudad;
```

### Ejercicio 7

```sql
SELECT COUNT(id) FROM usuarios WHERE DISTINCT ciudad;
```

### Ejercicio 8

```sql
SELECT AVG(edad) FROM usuarios;
```

### Ejercicio 9

```sql
SELECT AVG(edad) FROM usuarios WHERE verificado=1;
```

### Ejercicio 10

```sql
SELECT AVG(edad) FROM usuarios WHERE verificado=1 AND pais="España";
```

### Ejercicio 11

```sql
SELECT * FROM usuarios ORDER BY edad DESC;
```

### Ejercicio 12

```sql
SELECT * FROM usuarios ORDER BY saldo DESC LIMIT 5;
```

### Ejercicio 13

```sql
SELECT * FROM usuarios ORDER BY saldo ASC LIMIT 3;
```

### Ejercicio 14

```sql
SELECT * FROM usuarios WHERE pais="España" ORDER BY ciudad ASC;
```

### Ejercicio 15

```sql
SELECT * FROM usuarios WHERE email LIKE "%@proton.com";
```

### Ejercicio 16

```sql
SELECT username, email FROM usuarios WHERE saldo=(SELECT MAX(saldo) FROM usuarios);
```
Este lo he buscado en google porque no tenia ni idea.

### Ejercicio 17

```sql
SELECT apellido FROM usuarios WHERE apellido LIKE "%ez";
```
### Ejercicio 18

```sql
SELECT nombre FROM usuarios WHERE nombre LIKE "pe%";
```

### Ejercicio 19

```sql
SELECT nombre FROM usuarios WHERE nombre LIKE "%an%";
```

### Ejercicio 20

```sql
SELECT SUM(saldo) FROM usuarios WHERE baneado=1 AND ciudad="Barcelona";
```

### Ejercicio 21

```sql
SELECT nombre, apellido, ciudad FROM usuarios WHERE saldo >=300 AND saldo <=600>;
```

### Ejercicio 22

```sql
SELECT email, ciudad FROM usuarios WHERE edad IN (25, 30, 35);
```

### Ejercicio 23

```sql
SELECT username, password FROM usuarios WHERE baneado=1 OR saldo < 50;
```

### Ejercicio 24

```sql
SELECT AVG(saldo) FROM usuarios GROUP BY ciudad;
```

### Ejercicio 25

```sql
SELECT COUNT(*) AS usuariosPorPais FROM usuarios GROUP BY pais;
```

### Ejercicio 26

```sql
SELECT SUM(edad) FROM usuarios WHERE verificado=1 AND ciudad="Madrid";
```
Suma de las edades de todos los usuarios verificados de Madrid

```sql
SELECT COUNT(*) FROM usuarios WHERE pais NOT LIKE "España" AND baneado=1;
```
Cuenta todos los usuarios baneados de fuera de España 

```sql
SELECT saldo FROM usuarios WHERE apellido LIKE "Díaz" ORDER BY saldo DESC LIMIT 3;
```
Las tres personas apellidadas Díaz con el mayor saldo

```sql
SELECT AVG(nombre) FROM usuarios GROUP BY ciudad;
```
El nombre más común de cada ciudad.

```sql
SELECT AVG(id) FROM usuarios GROUP BY pais;
```
La persona cuyo id sea la media de cada país, de cierta manera, el hombre más normal de cada país. Me sobran ideas.

```sql
SELECT nombre, apellido FROM usuarios ORDER BY edad DESC LIMIT 1;
```
El nombre completo de la persona más anciana del mundo.
