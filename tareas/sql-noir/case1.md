# Case #001: The Vanishing Briefcase
Set in the gritty 1980s, a valuable briefcase has disappeared from the Blue Note Lounge. A witness reported that a man in a trench coat was seen fleeing the scene. Investigate the crime scene, review the list of suspects, and examine interview transcripts to reveal the culprit.

## Objectives
- Retrieve the correct crime scene details to gather the key clue.
- Identify the suspect whose profile matches the witness description.
- Verify the suspect using their interview transcript.

## Proceso seguido

Primero, hice

```sql
SELECT * FROM crime_scene WHERE location = "Blue Note Lounge";
```

En la descripción se menciona que se vió a un hombre huyendo de la escena del crimen en un "trech coat" y con una cicatriz en su megilla izquierda, por lo que mi siguiente paso es:

```sql
SELECT * FROM suspects WHERE scar LIKE "left cheek";
```

Los únicos que llevan un "trech coat" son Frankie Lombardi y Vincent Malone. Me guardo sus Ids, que son 3 y 183 respectivamente.

Intento

```sql
SELECT * FROM interviews WHERE suspect_id = 3;
```

Pero la trascripción es un valor nulo. Intento lo mismo con el otro sospechoso

```sql
SELECT * FROM interviews WHERE suspect_id = 183;
```

Esta vez la trascripción lee: "I wasn’t going to steal it, but I did." que se traduce a "No iba a robarlo, pero lo hice". No me inspira confianza el hecho de que no hubiera trascripción para el otro sospechoso, asique no asumo que lo he resulto todavía. Hice un repaso de lo que llevaba por si me había saltado algo, pero no encontre nada asique probé a entregar mi respuesta como Vincent Malone. Respuesta correcta.