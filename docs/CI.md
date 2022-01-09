# Sistemas de Integración Continua

Trataremos de automatizar la integración de los cambios en el código y su testeo es el proyecto de una forma más ordenada y fiable. Así verificaremos que el código sea correcto antes de su integración, y para ello debemos seleccionar herramientas que nos ayuden a lograr esta causa.

## Planteamiento

Se tratará de elegir dos herramientas e implementarla en el proyecto testeando así la imagen de docker y distintas versiones del lenguaje con ellos, pasando por una serie de requisitos que plantearemos a continuación.

## Requisitos

1. Que nos permita el testeo de más de una versión del lenguaje que empleamos en el proyecto.

2. Uso libre y gratis.

3. Que nos permita probar los cambios también en el contenedor creado para el proyecto.

4. Instalación y configuración clara, concisa y fácil.

5. Fácil integración y uso en consonancia a GitHub para un uso más sencillo.

6. Facilidad a la hora de implementar la funcionalidad de *Checks API* para que aparezca correctamente en Github y se compruebe desde los tests.

## Opciones

A continuación se va a presentar una lista de las opciones que se han barajado de cara a las dos herramientas a usar:

* Jenkins: Servidor de automatización open source. Colabora en la automatización de parte del desarrollo software mediante la integración continua y la facilita. No es solo un motor con resultados binarios tales como "Success/Failed" si no que deja un feedback que mediante la webapp de la herramienta se puede visualizar. A su vez, Jenkins es una arquitectura de plugins, lo que la hace fácilemnte extensible y se adapta bien a otras herramientas y lenguajes. Ofrece API REST y admite pipes.

* Bamboo: Canalización de entrega continua que ofrece resistencia, fiabilidad y escalabilidad a equipos de todos los tamaños hasta la implementación. Escala con confianza manteniendo el rendimiento. Gran resistencia de compilación y alta disponibilidad. Migraciones integradas desde otras herramientas y flujos de trabajo de ramificación de Git integrados. Se configura fácilmente y ofrece API REST.

* CircleCI: Herramienta de integración continua para automatizar los procesos de creación, prueba e implementación. Ofrece API REST, un flujo de trabajo de aprobación y la creación de informes y análisis que resulta útil en los test de código. Es compatible con muchos lenguajes y funciona atado a un repositorio git. Su webapp ofrece una interfaz fácilmente entendible donde se pueden controlar diversos aspectos controlables. El uso básico es gratuito y nos ofrece funcionalidades más que suficientes aunque se puede mejorar con un pago. Ofrece a su vez la funcionalidad de *Checks API* de forma bastante simple y afable de instalar mediante la propia documentación de la herramienta.

* Github Actions: Es una herramienta que permite reducir la cadena de acciones necesaria para la ejecución de código, mediante la creación de un de flujo de trabajo. Es configurable para que GitHub reaccione a ciertos eventos de forma automática según nuestras preferencias. Permite compartir datos entre los trabajos mencionados en el mismo workflow. Es compatible con una gran cantidad de lenguajes y versiones de los mismos, así como una configuración mediante un archivo .yml que le da bastante versatilidad respecto a nuestros deseos.

* GitLab: Implementa una herramienta de integración continua de uso sencillo, rápido yu open source. Con CI/CD de GitLab en el mismo lugar , podemos crear tickets, unir solicitudes, escribir código y establecer la integración y entrega continua sin depender de otra aplicación

* Travis: A pesar de no ser de pago, la inclusión de la tarjeta de crédito es obligatoria. Es un sistema de Integración Continua, gratuita para proyectos Open Source y de pago para proyectos privados. Se integra sin problemas con GitHub y automáticamente ejecuta el pipeline definido en cada push o pull requests. Incluye API, autorización basada en roles y creación de informes/análisis.

## Elección

Para este proyecto, se elegirán como las dos herramientas de integración tanto CircleCI como Github Actions.

### Justificación de la Elección

Las principales razones para justificar la elección son que ambas herramientas cumplen con creces los requisitos impuestos con anterioridad. Ambas son compatibles con el testeo de varias versiones de nuestro lenguaje, el cual en este proyecto realizamos con Github Actions. Ambas son de uso libre y gratis, siendo así el nivel más básico de CircleCI, más que suficiente para este proyecto. 

También, podemos hacer pruebas enlazando el docker creado con anterioridad para el proyecto, armando el archivo .yml para ello. En este caso lo hemos realizado con CircleCI dotando a las herramientas así de funciones específicas para abarcar todo lo que se pide en el objetivo.

La instalación de ambas herramientas se puede hacer de forma muy sencilla siguiendo la documentación que aportan en sus respectivas páginas. Estos pasos y su set up se explican en detalle en los archivos de documentación de cada herramienta.

La integración con Github en ambas herramientas es casi automática, siguiendo un par de sencillos pasos en Circle CI (documentado en su archivo respectivo) y casi instantáneo al montar el esqueleto necesario para Github Actions.

A su vez, para el objetivo se requiere el uso de los *Checks* el cual siguiendo unos sencillos pasos, que también están documentados en el respositorio, hemos conseguido completar con CircleCI.

En adición, me decanté por el uso de Github Actions en específico por un uso reciente en otro proyecto personal lo que me dio confianza para usarlo en esta ocasión.

Otras herramientas habrían sido buenas opciones, véase Travis, Jenkins o Bamboo, pero la afinidad con las herramientas finalmente seleccionadas daba un plus de confianza a la hora de tomar una decisión.