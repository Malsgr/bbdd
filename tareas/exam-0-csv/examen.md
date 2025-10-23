# Examen csv

**Alumno: Tomás Palomino**

**Fecha: 23/10/25**

## Respuestas

### 1. What command did you use to clean the columns?
```
csvlook ieca_export.csv -I
```
### 2. Why was an extra column showing? What would need to be done to fix the file formatting? **You don't need to do it**, just describe it.
```
csvcut -c "1,2,3,4" -d ";" ieca_export.csv | csvlook -I
```
También se puede hacer:
```
csvcut -c "1,2,3,4" ieca_export.csv > nombre-de-nuevo.csv
```
Aunque no lo llegé a hacer nunca porque solo se me ocurrió después de que se revelase la solución

### 3. The *CSV* doesn't use commas to separate values, do you think it's a case of bad formatting or is there a cause that justifies it?

Los decimales tienen coma, por lo que es necesario este formato para que csv lo lea correctamente

### 3. Different "Medidas" (Measures) appear in the table, if we want to filter only those from this year, keeping the rest of the columns, what command would you use?
```
csvgrep ieca_export.csv -c "3" -d ";" -m "Variación en lo que va de año" | csvlook -I
```

### 4. Based on the previous one, how would you limit the results only for Andalusia?
```
csvcut -c "1,2,3,4" -d ";" ieca_export.csv | csvgrep -c "3" -m "Variación en lo que va de año" | csvgrep -c "1" -m "Andalucía" | csvlook -I
```

### 5. Based on the previous one, how would you sort the results according to their CPI value from lowest to highest? And from highest to lowest?
```
csvcut -c "1,2,3,4" -d ";" ieca_export.csv | csvgrep -c "3" -m "Variación en lo que va de año" | csvgrep -c "1" -m "Andalucía" | csvsort -c "4" | csvlook -I
```
From highest to lowest:
```
csvcut -c "1,2,3,4" -d ";" ieca_export.csv | csvgrep -c "3" -m "Variación en lo que va de año" | csvgrep -c "1" -m "Andalucía" | csvsort -c "4" -r | csvlook -I
```