# Github Actions

Teniendo en cuenta ya la elección que hemos tomado para los sistemas de integración continua, documentaremos los pasos tomados para el set up de Github Actions.

En primera instancia, nos iremos al directorio creado en el objetivo anterios *.github/workflows/* y ahí crearemos un archivo .yml de configuración para los Test del Github Actions, el cual llamamos gha.yml.

En este archivo usamos la opción de que cada vez que hacemos un push, correremos este script de testeo en una máquina ubuntu por comodidad. A continuación haremos una serie de pasos dentro de esa máquina, que identificacmos como acciones a realizar. La primera de ellas lo que va a realizar es descargarse nuestro repositorio mediante *actions/checkout@master* siendo actions la organización donde están las acciones mencionadas antes por defecto en Github. Identificamos *checkout* como el nombre de esa acción y *master* su versión.

Ahora, haremos uso de algunas acciones para poder setear el lenguaje de Ruby con el que podremos ejecutar a su vez los test que tenemos preparados.

A continuación haremos el *build and push to docker* -> construir la imagen y subirla a dockerhub, construir la imagen y subirla a dockerhub usando la acción que podemos sacar de *docker/*.

Con la clave *with* usamos opciones que nos trae la acción con el que podremos logearnos al docker, el nombre al repositorio atado a este proyecto el cual indicamos el mismo que el de github en este caso.

Los secretos que vemos tanto del username como del password los enlazamos al repositorio desde el mismo github como hicimos en el objetivo 5.

Las opciones de tag las usamos para, al construir la imagen, las usará para tagear con el sha, y aparte agregamos el tag de *github.sha* ya que el sha que usa dockerhub para tagear usa la versión corta y no la larga que precisamos.

Estos 

## Set Up

Para preparar todo lo relacionado con la herramienta, hemos seguido la documentación que se proporciona en Github [aquí](https://docs.github.com/en/actions), y siguiendo enlaces que se facilitan en los documentos de la asignatura como [este](https://github.com/features/actions).

## Ventajas

La toma de GithubActions como una de nuestras opciones como CI tiene claras razones. Otros CI tienen algo en común, pues los script que se pasan se deben construir desde 0, no hay un paquete que podamos subir a dockerhub directamente. Debemos subirlo a la imagen de dockerhub y correr ahí esas líneas de testeo. Github Actions nos permite no solo crear pasos y ejecutarlas, si no que esos pasos están ya creados por alguien y se pueden reutilizar (en caso de que no estén hechos uno mismo se puede encargar de ello).

## Uso y funcionamiento

Siguiendo así los pasos especificados en nuestro archivo, podremos ver en el apartado de actions como se ejecutan y pasan los test que están predefinidos por nosotros.

Al estar integrado en Github, este nos proporciona una vista fácil de comprobar con la que podemos observar el resultado de los tests y ver en qué fallamos en caso de que no pase.