# Case 003: The Miami Marina Murder
A body was found floating near the docks of Coral Bay Marina in the early hours of August 14, 1986. Your job, detective, is to find the murderer and bring them to justice. This case might require the use of JOINs, wildcard searches, and logical deduction. Get to work, detective.

## Objectives
- Find the murderer. ( Start by finding the crime scene and go from there )

## Proceso seguido
Empiezo por
```sql
SELECT * FROM crime_scene WHERE location LIKE "Coral Bay Marina";
```
Y me dice "Two people were seen nearby: one who lives on 300ish "Ocean Drive" and another whose first name ends with "ul" and his last name ends with "ez"."

Empiezo por el primer sospechoso
```sql
SELECT * FROM person;
```
Hago esto primero porque quiero comprobar el formato en el que esta escrito la dirracción.
Prodedí a pegarme 20 minutos intentando averiguar porque
```sql
SELECT * FROM person WHERE address LIKE "Ocean Drive" AND adress BETWEEN 300 AND 400;
```
no devolvía nada. Al final me rendí y me dí cuenta que en los objetivos no se me pide nada más aparte de encontrar al asesino,
por lo que hize
```sql
SELECT * FROM confessions WHERE confession NOT NULL;
```
esperando que el creador de sql noir no se haya molestado en inventar varios cientos de confesiones diferentes.
Tenía razón, solo había 100 confesiones por lo que no tardé mucho en descubrir que la confesión 73 confesaba ser el asesino.
Ahora solo tengo que comprobar quien es ese, lo que puedo hacer facilmente con el person_id (8).
```sql
SELECT * FROM person WHERE id=8;
```
El nombre es Thomas Brown, el alias "The Fox" y trabaja de Dock Worker, cosa que tiene mucho sentido.
Entrego mi respuesta sin remordimiento alguno.
