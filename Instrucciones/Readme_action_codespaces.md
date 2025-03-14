### Este codespace tiene un shell que levanta un servidor para la base de datos.

Una vez abierto el codespaces, teclea docker-compose up -d 

![Descripción de la imagen](../Imagenes/Img59.png) 

espera 2 minutos para que el contenedor de base de datos levante y teclea sh up.sh, da enter.

Deberias ver una imagen como la siguiente:

![Descripción de la imagen](../Imagenes/Img51.png) 

Una vez terminado el shell se habrán creado una base de datos con 2 tablas pobladas.

Para acceder a la base de datos usa estas instrucciones

docker exec -it ad-comun-jrpr-sql-mysql-1 /bin/bash

![Descripción de la imagen](../Imagenes/Img56.png) 

una vez dentro escribe: mysql -h localhost -u user -ppassword

Estarás dentro la base de datos.

![Descripción de la imagen](../Imagenes/Img57.png) 

Escribe las siguientes instrucciones:

use DB_EjercicioComunJRPR;

show tables;

![Descripción de la imagen](../Imagenes/Img58.png) 

Aqui ya puedes ejecutar tus scripts.
