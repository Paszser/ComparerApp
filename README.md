# ComparerApp 🎮

## Idea Inicial 💡
Comparador de precios de videojuegos en diferentes tiendas web. Los precios se actualizarán de forma diaria teniendo en cuenta los diversos cambios que se pueden producir en sus correspondientes sitios web en diversos momentos (en el momento en el que se refresque la página para el user), así como tratar de predecir tanto el precio, como el momento en el que se producirá la rebaja teniendo en cuenta datos estadísticos pasados. Este análisis se realizará sobre una gama de videojuegos bastante alta, siendo aquellos que se encuentran disponibles en las tiendas web de mayor referencia, independientemente de la antigüedad, el precio, importancia o género.


## Motivación 👏
La idea del proyecto viene dada para dar una herramienta a aquellas personas, desde estudiantes aficionados a los videojuegos, hasta aquellos más veteranos, que buscan poder adquirir de forma legal a un precio asequible sus juegos favoritos.

## Documentación 📂
Se tiene acceso a la documentación del proyecto en [este enlace.](https://github.com/Paszser/ComparerApp/tree/main/docs)

* En el archivo [Issues](https://github.com/Paszser/ComparerApp/blob/main/docs/ISSUES.md) se describen los tipos de usuario así como las historias de los mismos que derivan en la creación de los milestones para conseguir esas funcionalidades.
* En el archivo [User Journey](https://github.com/Paszser/ComparerApp/tree/main/docs) se realiza el ejemplo del recorrido del usuario al hacer uso de la aplicación funcional.

## Automatizacion de testeo 📋

### Instalación y tests
Para el desarrollo de estas comprobaciones, va a ser necesario poseer en nuestra máquina, y así poder ejecutar, comandos pertenecientes a 'rake', 'ruby' y 'gem'.

Primeramente, comprobaremos si tenemos los comandos mencionados anteriormente instalados:

```shell
rake --version
gem --version
ruby --version

```

Y procedemos a instalar aquel que no tengamos en nuestro PC:

```shell
sudo apt-get install ruby-full
sudo apt install gem
gem install rake
```

Tras tener todas las herramientas de las que disponemos, podremos comenzar a hacer uso de las tareas creadas para la automatización y las comprobaciones que se requieren:

### Instalación de las dependencias 
Se instalarán las dependencias necesarias en el proyecto con:

```shell
rake installdeps
```

### Realización de los test pertinentes
Se realizarán los test con:

```shell
rake test
```

### Comprobación de la sintaxis
Se realizarán comprobaciones de la sintaxis de los ficheros del proyecto con:

```shell
rake check
```
