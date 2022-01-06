# Docker

## Imagen base para el contenedor

En busca de la mejor optimización del contenedor, procederemos a realizar una pequeña investigación para ver cuál es la imagen que nos conviene usar.

### Criterios de búsqueda

Trataremos de encontrar la imagen base que tarde menos tiempo en realizar la ejecución, y escoger así la más rápida. Que requiera de un menor tiempo para su construcción también implica una menor complicación en la construcción del Dockerfile y el uso de menos dependencias, buscando el contenedor más ligero posible. Además deberemos contar con la versión que estamos usando de ruby al igual que las herramientas que se han ido añadiendo en otros Objetivos, véase rake.


### Imágenes

[Aquí](https://hub.docker.com/_/ruby) se encuentran las versiones que se ofrecen para el uso de la imagen del contenedor con el formato *ruby:{version}-{contenedor}*, incluyendo incluso la versión oficial siendo *ruby:{version}*

Probaremos de estas imágenes aquellas que hacen uso de la versión 3.1.0 de ruby.

### Pruebas

- *3.1.0* -> 950MB
- *3.1.0-alpine* -> 90MB
- *3.1.0-bullseye* -> 330MB
- *3.1.0-slim* -> 195MB
- *3.1.0-buster* -> 870MB

Por ejemplo, la versión slim no nos sería válida pues no incluye paquetes necesarios para la ejecución. En este caso no se podría por ejemplo hacer uso de "adduser" lo que nos daría fallo al montar la imagen.

Teniendo en cuenta algunos datos tomados ejecutando en nuestro equipo, haremos uso de la imagen proporcionada por alpine para la realización de este Objetivo. Las razones principales vienen de la mano de la menos memoria usada así como el tiempo de ejecución. En imágenes como las proporcionadas por bullsye o buster las dependencias, y así como los paquetes son mayores y de ahí la mayor cantidad de memoria que porta.

## Dockerfile

En la creación de contenedores para el despliegue futuro de nuestra aplicación, vamos a hacer uso de Docker. Primeramente, hemos indagado [aquí](https://hub.docker.com/_/ruby) para la versión de ruby a utilizar en nuestro Dockerfile como imagen.

Tras incluir algunos metadatos de información, hemos proseguido aplicando buenas metodologías y prácticas para la creación del Dockerfile, creando variables de entorno tanto para el directorio de trabajo donde se ejecutarán los tests como para el directorio home del user sin privilegios que vamos a añadir.

Después de añadir al susodicho usuario, damos privilegios de usuario a nuestro GEM_HOME, el cual es /usr/local/bundle, y cambiamos a dicho usuario. Copiaremos tanto el Gemfile, como el Gemfile.lock al home del user e instalamos las dependencias que se incluyen en el Gemfile, borrando los ficheros de dependencias generados y que no nos serán de provecho. 

Finalmente cambiamos al directorio de trabajo para ejecuat los tests con el task runner que poseemos y ejecutamos en la terminal el comando con el que se procesan los tests que hemos programado.

## Dockerhub.yml

Para la automatización de esto, hemos creado un archivo .yml: *.github/workflows/dockerhub.yml* en el que hemos añadido las diferentes opciones y configuraciones de nuestro interés.

Indicamos la activación del archivo cuando se envía a la main brach del repositorio, especificando posteriormente lo que queremos que ocurra en el workflow. También indicamos que se active con el push al main o un pull request a la rama main.

Añadimos en general todo aquello que nos parezca conveniente, tanto lo explicado en clase como lo que se indica [aquí](http://jj.github.io/IV/documentos/proyecto/5.Docker) incluyendo la ejecución de la orden para testear el contenedor que se facilita.