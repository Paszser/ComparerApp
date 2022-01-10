# Github Actions

Teniendo en cuenta ya la elección que hemos tomado para los sistemas de integración continua, documentaremos los pasos tomados para el set up de Github Actions.

En primera instancia, nos iremos al directorio creado en el objetivo anterios *.github/workflows/* y ahí crearemos un archivo .yml de configuración para los Test del Github Actions, el cual llamamos gha.yml.

En este archivo usamos la opción de que cada vez que hacemos un push, correremos este script de testeo en una máquina ubuntu por comodidad. A continuación haremos una serie de pasos dentro de esa máquina, que identificacmos como acciones a realizar. La primera de ellas lo que va a realizar es descargarse nuestro repositorio mediante *actions/checkout@v2* siendo actions la organización donde están las acciones mencionadas antes por defecto en Github. Identificamos *checkout* como el nombre de esa acción y *v2* su versión.

Ahora, haremos uso de algunas acciones para poder setear el lenguaje de Ruby con el que podremos ejecutar a su vez los test que tenemos preparados siguiendo las prácticas que nos recomienda la documentación [aquí](https://docs.github.com/es/actions/automating-builds-and-tests/building-and-testing-ruby).

Usamos *ruby/setup-ruby* como forma provista por Ruby en github para especificar de forma sencilla la versión a usar desarrollado [aquí](https://github.com/ruby/setup-ruby). 

Con la clave *with* indicamos las versiones de ruby con las que realizaremos los test en este caso. Más adelante comentaremos este apartado de las versiones en más detalle más adelante.

Finalmente simplemente instalaremos las dependencias que pudieran ser necesarias con *bundle install* y ejecutaremos los tests que deben pasar para que se de el check aprobado por la herramienta.

## Set Up

Para preparar todo lo relacionado con la herramienta, hemos seguido la documentación que se proporciona en Github [aquí](https://docs.github.com/en/actions), y siguiendo enlaces que se facilitan en los documentos de la asignatura como [este](https://github.com/features/actions).

## Ventajas

La toma de GithubActions como una de nuestras opciones como CI tiene claras razones. Otros CI tienen algo en común, pues los script que se pasan se deben construir desde 0, no hay un paquete que podamos subir a dockerhub directamente. Debemos subirlo a la imagen de dockerhub y correr ahí esas líneas de testeo. Github Actions nos permite no solo crear pasos y ejecutarlas, si no que esos pasos están ya creados por alguien y se pueden reutilizar (en caso de que no estén hechos uno mismo se puede encargar de ello), como es el caso de [este](https://github.com/ruby/setup-ruby) enlace citado anteriormente. Lo mejor es la capacidad de enlazarlo con nuestro repo en Github pues ahí mismo podemos ver los resultados de forma concisa y sencilla.

## Uso y funcionamiento

Siguiendo así los pasos especificados en nuestro archivo, podremos ver en el apartado de actions como se ejecutan y pasan los test que están predefinidos por nosotros.

Al estar integrado en Github, este nos proporciona una vista fácil de comprobar con la que podemos observar el resultado de los tests y ver en qué fallamos en caso de que no pase.

## Versiones de Ruby

Aquí comentaremos un aspecto curioso que se ha dado en el desarrollo del archivo de configuración de Github Actions. A pesar de que la última versión estable de Ruby es la *3.1.0* como se puede ver [aquí](https://www.ruby-lang.org/es/downloads/) en el apartado de versiones estables, y siendo la 2.6.9 la última estable, siendo que versiones anteriores ninguna tiene soporte. En la documentación seguida para enlazar Ruby y setearlo [aquí](https://docs.github.com/es/actions/automating-builds-and-tests/building-and-testing-ruby) nos recomienda hacer uso de una versión del set up en la que las últimas versiones de Ruby no se encuentran soportadas. Como se indica [acá](docs/img/rubyvError.png) la última versión de la que podemos hacer uso es la *3.0.1*. En este caso y a pesar que [aquí](https://github.com/ruby/setup-ruby) se ha dado soporte a las últimas versiones de Ruby hace apenas un par de semanas, se ha preferido seguir las prácticas que se encuentran en la documentación de GithubActions para ceñirnos a pruebas más fiables.