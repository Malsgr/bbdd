# Examen monotablas SQLite

Nombre:
Fecha:

## Objetivo

Este examen tiene como objetivo demostrar tu habilidad con la parte de `DDL` en SQL.

## Formato de entrega

Crea una carpeta llamada `examen-monotablas` en la carpeta `tareas` de tu repositorio personal de la asignatura.

Copia el contenido de este repositorio a la carpeta de acabas de crear y trabaja ahí durante la prueba.

> **NO** hagas `cp *` a la carpeta `tareas`, ya que se copiarán todos los archivos del repositorio, incluyendo el `.git` y tendras problemas al hacer `git push` después.

## Examen

Tu objetivo es crear una base de datos *con una sola tabla* para usuarios usando SQLite.

Tendrás que entregar:

- Un archivo llamado `schema.sql` con la definición de la tabla descrita mas adelante.
- Un archivo `insert.sql` donde insertes 5 filas en la tabla que creaste.
- Un `.sh` para automatizar la ejecucición de ambos `.sql`.

### Definición de la tabla

La tabla de tu base de datos se llamará *usuarios*.

Deberá tener las siguientes columnas, en el caso de que se indiquen tipos o restricciones, deberás seguirlas, si no se indican, elige las opciones y restricciones que **consideres mas sólidas** para que la tabla asegure la integridad de datos de la misma:

- **id**, para identificar cada fila de forma única
- **edad**, la edad real del usuario
- **nombre**, el nombre real del usuario
- **apellido**, el primer apellido del usuario
- **verificado**, si el usuario ha verificado su cuenta
- **baneado**, si el usuario ha sido baneado
- **pais**, el pais de origen del usuario, los valores de esta columna son opcionales
- **ciudad**, la ciudad del usuario, los valores de esta columna son opcionales
- **username**, el nombre para acceder del usuario, debe ser único
- **password**, la contraseña de acceso del usuario
- **email**, dirección correo electronico del usuario
- **rol**, puede ser "admin", "usuario" o "moderador", cualquier otro valor debe dar error
- **saldo**, deben ser valores decimales entre 0 y 9999

### Inserts

En el archivo `insert.sql` deberás insertar **al menos 4 usuarios** con datos realistas, inserta un administrador, un moderador y dos usuarios normales.

### Script `sh`

El script debe ejecutar tanto el schema como los inserts, ambos en archivos `.sql` separados y crear una base de datos llamada `usuarios.db`.

Después, haz una query donde extraigas usuarios de la tabla, puedes extraer todos, o hacer una query mas compleja. Muestra los resultados en una *tabla* para mejorar la visualización de los datos.

> Asegúrate de que puedes ejecutar tu script continuamente sin errores y de **no adjuntar ninguna base de datos generada a tu entrega**.

### [EXTRA] `insert.py`

En el repositorio hay un archivo `insert.py` que sirve para insertar datos en una tabla que solo tiene dos columnas en una tabla similar a la que has creado.

Modifica el archivo para que sea funcional con la base de datos que genera tu `.sh`, preguntando al usuario por todos los datos necesarios para insertar un nuevo usuario en la tabla.