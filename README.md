# Docker Image y Python Server

Imagen de docker desde Python, se tiene que crear un index.html y se tiene que lanzar la sentencia de Python server para ver el index antes creado.

1.	Se crea un index.html simple para comprobar su correcto funcionamiento

![image](https://github.com/HectorCRZBQ/docker_image/assets/148070442/e1c3dc7d-5c46-402e-9b34-7564a876ec56)

2.	Se tiene que diseñar un archivo dockerfile, donde definiremos los siguientes factores

 - FROM python:3.11
 - COPY ./ /imagen **(dirección de origen desde donde se copia)**
 - WORKDIR /imagen **(direccion del directorio de trabajo)**
 - EXPOSE 8080 **(Puerto que queremos exponer)**
 - CMD ["python", "-m", "http.server", "8080"] **(lenguaje, mensaje, solicitud, puerto)**

![image](https://github.com/HectorCRZBQ/docker_image/assets/148070442/a0582908-5881-4429-950a-b3a2e2f4fae0)

3.	Se abre una terminal de Windows Powershell en Administrador, donde creamos la imagen de nuestra carpeta, primero nos movemos a la ubicación con un **cd C:\Users\hecto\pruebas_docker\imagen**, luego creamos la imagen con el comando **docker build -t prueba .** , una vez creada la imagen la habilitamos para verla en local con el comando **docker run -d -p 8080:8080 prueba**

![image](https://github.com/HectorCRZBQ/docker_image/assets/148070442/632c18fb-8d87-4dc2-ba23-775285ccde9a)

4.	Para verla a podemos acceder a **http://localhost:8080**

![image](https://github.com/HectorCRZBQ/docker_image/assets/148070442/18ae00a6-a283-4ca1-915f-171b583bcaac)

--- 
Hector de la Cruz Baquero - [Linkdedin](https://www.linkedin.com/in/h%C3%A9ctor-de-la-cruz-baquero-ba193429b/) - [Webpage](https://hectorcrzbq.github.io/)
