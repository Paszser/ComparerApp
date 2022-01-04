# Docker

## Criterios

### ¿Contendores?

Para poder desplegar nuestra aplicación y poder realizar los test pertinentes y ejecutarlos, haremos uso de contenedores con los que se nos facilite el proceso de lanzamiento (incluso en la nube en un futuro) y aislar la ejecución de nuestro proyecto.

Trataremos de buscar así, un entorno de prueba y producción que no solo nos permita desplegar el proyecto, si no que cumpla una serie de requisitos para poder hacer uso de las prestaciones que cumplan los criterios pertinentes y haga una buena simbiosis con nuestra aplicación.

1. Simpleza: Desde un aspecto más general, confirmamos el uso de contenedores por encima de otro tipo de opciones por su simplicidad y el ahorro de tiempo que ello nos aporta. Una opción para el despliegue podría ser una máquina virtual, pero ello requiere de tiempo y esfuerzo cuyo valor se mide en oro. Nos concentraremos en optimizar desde el principio todo y por ello haremos uso de los contenedores.

2. Ligereza: Los contenedores tienen la ventaja del uso de pocos recursos en comparación a máquinas virtuales, por ejemplo. También hacen uso de menos espacio de memoria, lo que optimiza la ejecución cuando sea pertinente, al igual que el menor tiempo de arranque.

3. Seguridad: A su vez, podemos estar seguros que si nuestra aplicación se despliega correctamente en un contenedor, se garantiza que se hará muy seguramente en el resto de máquinas, evitando la famosa frase "funciona en mi máquina" como excusa ante fallos.

4. Extensibilidad: Si fuere necesario, es posible ampliar una imagen existente y agregar aspectos que necesite el contenedor, y así hacer que su imagen se ajuste mejor a sus requisitos. Muchas veces alguna pieza falta a la hora de montar el entorno y lo extensible que es docker facilita enormemente este aspecto.

5. La nube: Los contenedores y Cloud Computing están estrechamente ligados. De esta forma nos facilitamos cualquier error que pueda ocurrir así como problemas.

### ¿Qué contenedor?

Teniendo una idea de la importancia y ventajas que nos brindan los contenedores para el despliegue de nuestro proyecto. ¿Cuál deberíamos de escoger?

Vamos a tener en cuenta algunos aspectos de importancia desde los cuales partir para realizar una elección a posteriori.

1. Documentación: Primeramente, nos fijaremos en aquellas opciones que posean una mejor documentación. Es bien sabido que cuanta mayor información se disponga respecto a algo, mejor y más fácil será resolver problemas y obtener un mejor resultado. Así, esto va de la mano con una mayor comunidad en la que a su vez mayores sean los avances con el paso del tiempo para mejores opciones y prestaciones.

2. Portabilidad: Dentro del ámbito que nos incumbe, nos importan formas rápidas de compartir nuestra aplicación con sus dependencias hacia otros entornos. Todo lo que sea facilitar este tipo de acciones nos convendrá para el momento que despleguemos el proyecto.

3. Control de versiones: Nuestro desarrollo va de la mano con las versiones de nuestro código. Estamos en un constante avance en el que nos interesa tener cierto control sobre el estado de nuestra aplicación en ciertos momentos del desarrollo.

4. Rapidez en el despliegue: Una de las razones por las que elegimos los contenedores fue esta misma. Trataremos de optimizar al máximo tanto el tiempo como el espacio del que haremos uso, y dentro de los propios contenedores es un aspecto en el que fijarse.

5. Almacenamiento: Al igual que el apartado anterior, trataremos de optimizar este aspecto al máximo para tratar de consumir lo menos posible.


## Opciones

Varias son las opciones que se presentan ante nosotros a la hora de hacer elección del contenedor. Azure, GitHub container registry o AWS son algunas opciones que se presentan en la mesa como candidatas para hacer uso de sus características, pero la que más destaca es la conocida Docker.

1. Documentación: Comenzando con la Documentación, Docker está bastante extendida, por lo que tanto la información escrita como la cantidad de usuarios que colaboran es bastante grande. Cumple con creces por no decir que es la que más destaca en este aspecto.

2. Portabilidad: Docker proporciona un modelo de implementación basado en imágenes, lo que a su vez significa que sirve una manera sencilla de distribuir una aplicación, como buscamos en este caso.

3. Control de versiones: Una sola imagen de Docker está conformada por un conjunto de capas armonizadas. Cuando se altera una imagen se crea una capa, y Docker tiene esa funcionalidad para hacer de nuevo uso de las capas para formar nuevos contenedores. La forma en la que se intercalan dichas capas en su forma de control de versiones.

4. Rapidez en el despliegue: Una imagen puede ponerse en marcha con Docker en cuestión de segundos, y cuando ya no se precisa de la misma forma, es capaz de eliminarse rápidamente.

5. Almacenamiento: Docker no admite el almacenamiento persistente. Cuando se forma una imagen Docker, sus capas serás de solamente lectura. Mientras dure la ejecución, si se produce algún cambio en su status, la diferencia se reflejará en una nueva capa.

## Elección

Ante todas las opciones presentadas, en nuestro caso haremos uso de Docker para los contenedores del proyecto. Como hemos podido observar, cumple con creces los requisitos mínimos que hemos impuesto, y a pesar de la existencia de otras opciones, lo extendido y famoso que es nuestra elección la dota de las cualidades para ser nuestra elegida.

## Imagen base para el contenedor

En busca de la mejor optimización del contenedor, procederemos a realizar una pequeña investigación para ver cuál es la imagen base con la que menos tiempo necesitamos para la ejecución, y escoger así la más rápida. Que requiera de un menor tiempo para su construcción también implica una menor complicación en la construcción del Dockerfile y el uso de menos dependencias:

- *ruby:3.1.0-alpine* -> Finished in 0.01998 seconds (files took 0.19726 seconds to load) & 34MB
- *ruby:3.1.0-bullseye* -> Finished in 0.01799 seconds (files took 0.20261 seconds to load) & 330MB
- *ruby:3.1.0-slim* -> Finished in 0.01879 seconds (files took 0.19961 seconds to load) & 71MB

Teniendo en cuenta algunos datos tomados ejecutando en nuestro equipo, haremos uso de la imagen proporcionada por alpine para la realización de este Objetivo. Las razones principales vienen de la mano de la menos memoria usada así como el tiempo de ejecución. En imágenes como las proporcionadas por bullsye o slim las dependencias, y así como los paquetes son mayores y de ahí la mayor cantidad de memoria que porta.

## Dockerfile

En la creación de contenedores para el despliegue futuro de nuestra aplicación, vamos a hacer uso de Docker. Primeramente, hemos indagado [aquí](https://hub.docker.com/_/ruby) para la versión de ruby a utilizar en nuestro Dockerfile como imagen.

Tras incluir algunos metadatos de información, hemos proseguido aplicando buenas metodologías y prácticas para la creación del Dockerfile, creando variables de entorno tanto para el directorio de trabajo donde se ejecutarán los tests como para el directorio home del user sin privilegios que vamos a añadir.

Después de añadir al susodicho usuario, damos privilegios de usuario a nuestro GEM_HOME, el cual es /usr/local/bundle, y cambiamos a dicho usuario. Copiaremos tanto el Gemfile, como el Gemfile.lock al home del user e instalamos las dependencias que se incluyen en el Gemfile, borrando los ficheros de dependencias generados y que no nos serán de provecho. 

Finalmente cambiamos al directorio de trabajo para ejecuat los tests con el task runner que poseemos y ejecutamos en la terminal el comando con el que se procesan los tests que hemos programado.

## Dockerhub.yml

Para la automatización de esto, hemos creado un archivo .yml: *.github/workflows/dockerhub.yml* en el que hemos añadido las diferentes opciones y configuraciones de nuestro interés.

Indicamos la activación del archivo cuando se envía a la main brach del repositorio, especificando posteriormente lo que queremos que ocurra en el workflow. También indicamos que se active con el push al main o un pull request a la rama main.

Añadimos en general todo aquello que nos parezca conveniente, tanto lo explicado en clase como lo que se indica [aquí](http://jj.github.io/IV/documentos/proyecto/5.Docker) incluyendo la ejecución de la orden para testear el contenedor que se facilita.