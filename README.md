* Crear imagen

`docker build -t tarea2 .`

* Crear container desde la imagen que hemos creado

`docker run --name tarea2_container -d -i -t tarea2 /bin/sh`

* Entrar al container y verificar el archivo

`docker exec -it tarea2_container bash`

* Copiar archivo

`docker cp tarea2_container:/tarea2/output_file.txt .`

* Pushear a docker hub
- Primero tageamos la imagen: `docker tag tarea2 bepz/tarea2`
- Finalmente corremos: `docker push bepz/tarea2`