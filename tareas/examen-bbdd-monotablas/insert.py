import sqlite3

name = input("Usuario: ")
password = input("Password: ")

conn = sqlite3.connect('app.db')
cursor = conn.cursor()

cursor.execute("INSERT INTO users (name, password) VALUES (?, ?)", (name, password))
conn.commit()
conn.close()
print("Usuario creado exitosamente.")