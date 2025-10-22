# Ejercicio csv movies

## Ejercicio 1
**Objetivo**

En esta práctica usarás diferentes herramientas para manipular y extraer datos de un archivo csv.

**Método de entrega**

Crea un archivo de markdown donde vayas resolviendo cada punto de la sección Desarrollo.
Subelo a tu repositorio privado de la asignatura, en el directorio tareas, dentro de un directorio llamado 0-movies.

---
### ¿Que columnas hay en el archivo?
movieId | titles | genres
### ¿Cuantas filas tiene? Dame el comando que te devolvería **solo** el número de filas.
Tiene 149,532 filas
dam1@dam1:~/markdown$ csvcut movies.csv -c movieId 
### Crea un comando que te devuelva **solo** titulo y género de películas que empiecen por *The*.
dam1@dam1:~/markdown$ csvcut movies.csv -c title,genres | csvgrep -m "The" -c title
### Crea un comando que te devuelva **solo** los títulos e id de las películas del género *Drama*.
dam1@dam1:~/markdown$ csvgrep -c genres -m "Drama" movies.csv | csvcut -c movieId,title
### Crea un comando que te devuelva **solo** los títulos de películas del año 2015, ordenados alfabéticamente.
dam1@dam1:~/markdown$ csvgrep -c title -m "2015" movies.csv | csvsort -c "title" | csvcut -c "title"
### ¿Que pelicula tiene el id 101025?
Jack the Giant Slayer (2013)
### ¿Que pelicula tiene el id 115713?
Ex Machina (2015)
### ¿Que comando usaste para extraer los titulos según su id?
dam1@dam1:~/markdown$ csvgrep movies.csv -c movieId -m "id"
### ¿Que id tiene la pelicula "Paranoia Agent"?
108977
