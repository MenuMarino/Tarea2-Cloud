Integrantes:
* Benjamin Diaz
* Rodrigo Cespedes

1. Crear imagen

`docker build -t tarea2 .`

2. Crear container desde la imagen que hemos creado

`docker run --name tarea2_container -d -i -t tarea2 /bin/sh`

3. Entrar al container y verificar el archivo

`docker exec -it tarea2_container bash`

4. Copiar archivo

`docker cp tarea2_container:/tarea2/output_file.txt .`

5. Pushear a docker hub
- Primero tageamos la imagen: `docker tag tarea2 bepz/tarea2`
- Finalmente corremos: `docker push bepz/tarea2`

6. Link de nuestra imagen
* https://hub.docker.com/r/bepz/tarea2

7. Video
* https://drive.google.com/file/d/14BLKXQNDs8u7hw311oBx-JGOgnkCoMD5/view?usp=share_link
