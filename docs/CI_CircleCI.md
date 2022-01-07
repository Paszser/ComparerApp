# CircleCI

Teniendo en cuenta ya la elección que hemos tomado para los sistemas de integración continua, documentaremos los pasos tomados para el set up de CircleCI.

En primera instancia, nos registraremos con nuestra cuenta de GitHub y autorizaremos el uso en nuestros repositorios.

Tras ello, nos dirigiremos a seleccionar el repositorio en el que aplicaremos esta herramienta, indicando a su vez la rama en la que habremos incluido previamente el archivo *.circleci/config.yml* donde se especifican aspectos como la imagen de nuestro docker.

A continuación podremos comprobar como en nuestro PR, un test de CircleCI aparece, dándonos así ese feedback que buscamos.

## Set Up

Para preparar todo lo relacionado con la herramiento, hemos seguido la documentación que el propio CircleCi proporciona [aquí](https://circleci.com/docs/2.0/), en específico apartados como [este](https://circleci.com/docs/2.0/configuration-reference/) para armar el archivo de configuración y su sintaxis.

## Ventajas

La elección de CircleCI como uno de nuestros CI no es casualidad. Su sencillez para enlazarlo con nuestro repositorio de Github o la capacidad que tenemos de configurarlo como mejor nos convenga son razones de peso para ello. En este caso hemos usado la versión 2 del mismo debido a recomendaciones presentes en la documentación a pesar de la existencia de nuevas versiones, asegurándonos así de una compatibilidad completa de detalles como pueden ser la imagen del docker.

## Uso y funcionamiento

Como es observable en los test que pasa el PR, los tests efectivamente se ejecutan y se pasan sin problema alguno en los checks. Desde CircleCI también pasan los tests correctamente.

Todo esto es gracias, en parte, (y por no decir por completo), al fichero de configuración del que disponemos.

Algunos detalles importantes a comentar del mismo es la selección de la versión que usaremos, 2 en este caso, así como la imagen de docker asociada a nuestro proyecto.

Como comando a ejecutar, asociamos el que usamos para correr los tests, siendo "rake test" el nuestro.

## Checks

Como se ha ido comentando en este fichero de documentación, se ha añadido la funcionalidad de activar los checks en el propio PR donde se nos comunica que efectivamente se han pasado los test. Todo lo relacionado con esto se ha sacado de la documentación [aquí](https://circleci.com/docs/2.0/enable-checks/)