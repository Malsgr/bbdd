# Case 002: The Stolen Sound
In the neon glow of 1980s Los Angeles, the West Hollywood Records store was rocked by a daring theft. A prized vinyl record, worth over $10,000, vanished during a busy evening, leaving the store owner desperate for answers. Vaguely recalling the details, you know the incident occurred on July 15, 1983, at this famous store. Your task is to track down the thief and bring them to justice.

## Objectives
- Retrieve the crime scene report for the record theft using the known date and location.
- Retrieve witness records linked to that crime scene to obtain their clues.
- Use the clues from the witnesses to find the suspect in the suspects table.
- Retrieve the suspect's interview transcript to confirm the confession.

## Proceso seguido

Primero hize
```sql
SELECT * FROM crime_scene WHERE location LIKE "West Hollywood Records"
```

No me dá ninguna información nueva aparte del id (65, por lo que lo siguiente que pruebo es
```sql
SELECT * FROM witnesses WHERE crime_scene_id = 65;
```
Hay dos testigos. El primero (id=28) dice "I saw a man wearing a red bandana rushing out of the store.", mientras que el segundo (id=75) defiende que "The main thing I remember is that he had a distinctive gold watch on his wrist."

Con esto, ya puedo hacer
```sql
SELECT * FROM suspects WHERE bandana_color LIKE "red" AND accessory LIKE "gold_watch";
```
Me dá tres sospechosos, Tony Ramirez (35), Mickey Rivera (44), Rico Delgado (97).

Haciendo 
```sql
SELECT * FROM interviews WHERE suspect_id=[el id respectivo];
```
con cada sospechoso descubro que Rico Delgado confesa: "I couldn't help it. I snapped and took the record."
