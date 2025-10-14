## ¿Que columnas hay en el archivo?
movieId | titles | genres
## ¿Cuantas filas tiene? Dame el comando que te devolvería **solo** el número de filas.
Tiene 149,532 filas
csvcut movies.csv -c movieId
## Crea un comando que te devuelva **solo** titulo y género de películas que empiecen por *The*.
csvcut movies.csv -c title,genres | csvgrep -m "The" -c title
## Crea un comando que te devuelva **solo** los títulos e id de las películas del género *Drama*.
csvgrep -c genres -m "Drama" movies.csv | csvcut -c movieId,title
## Crea un comando que te devuelva **solo** los títulos de películas del año 2015, ordenados alfabéticamente.
csvgrep -c title -m "2015" movies.csv | csvsort -c "title" | csvcut -c "title"
