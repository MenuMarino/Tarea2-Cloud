import csv
from collections import Counter

# Abre el archivo CSV en modo lectura
with open("movies.csv", "r", encoding="utf-8") as archivo:
    # Crea un objeto para leer el archivo CSV
    lector_csv = csv.reader(archivo)

    # Inicializa una lista para almacenar todas las palabras en el archivo
    palabras = []

    # Itera sobre cada línea en el archivo CSV
    for linea in lector_csv:
        # Añade todas las palabras de la línea a la lista de palabras
        palabras += linea[0].split()

    # Cuenta el número de ocurrencias de cada palabra en la lista
    recuento_palabras = Counter(palabras)

    # Ordena las palabras por su recuento (en orden descendente)
    palabras_ordenadas = recuento_palabras.most_common()

    # Imprime las palabras ordenadas por su recuento
    for palabra, recuento in palabras_ordenadas:
        print(palabra, ":", recuento)
