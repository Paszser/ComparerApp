# Test Runner

## Criterios

 Algunos aspectos de esta herramienta para tener en cuenta su elección vienen dada por:

1. La primera y más fundamental razón para la elección de una de estas herramientas será la documentación. Cuando más usada sea una herramienta, mayor será la documentación y más expandida su forma de uso y forma de corregir posibles fallos, no solo mediante el uso de la información disponible en internet, sino también por la ayuda de otros usuarios más epxerimentados.
2. También será importante la extensibilidad, la capacidad para adaptarse a la situación de un proyecto y mejorar con el tiempo así como poder combinarse con otras herramientas.
3. Otra razón de uso será la forma de realizar los test pertinentes así como el feedback que se obtenga de los mismos. Se precisará de una buena práctica a la hora de realizarlos así como una reseña clara y concisa de los fallos para así poder solucionarlos.
4. Por el momento nos será útil la posibilidad de probar partes del código concisas. Puesto que aún se encuentra en horas tempranas de su desarrollo, será necesario ir probando ciertas partes a nuestro antojo y no todo como un bloque.
5. También nos será necesario una herramienta que no solo nos ejecute y organice los test, también y por comodidad buscamos una herramienta que incluya una biblioteca que nos permita realizar aserciones. Una posibilidad sería incluir no una, sino dos herramientas, una que sea un test runner y otra una biblioteca de aserciones, pero en este caso optaremos por una de las que implementan ambas para mayor comodidad.

## Opciones Existentes

Las opciones de las que dispones son varias, entre ellas:

*Minitest*, que da soporte a proyectos TDD, BDD, benchmarking... *test-unit* que incluye a su vez capacidad de realizar aserciones. *Cucumber*, una herramienta escrita en lenguaje plano perfecta para personas no fmailiarizadas con los lenguajes de programación, o *Capybara*, que simula como un usuario real experienciaría el uso de tu aplicacion. *solid_assert*, una implementación simple de las aserciones en ruby para poder llevar esas presunciones que queremos testear al código.

Todas estas opciones serían perfectamente válidas para llevar un control del proyecto, pero hemos dejado para el final la más conocida y expandida globalmente:

*RSpec* es una "Testing tool" para Ruby la cual fue creada para dar soporte a los proyectos TDD, es decir, a aquellos cuyo desarrollo va guiado por las pruebas que se realizan sobre el código. A su vez incluye la posibilidad de realizar aserciones en código lo que a su vez nos brindará más razones y criterio para su elección. A continuación realizaremos una comparación de los criterios con la herramienta elegida:

1. a) Primeramente por ser una, sino la más usada, en la producción de aplicaciones, teniendo una gran variedad de documentación y de tutoriales a sus espaldas que facilitan su uso y adaptación para el proyecto que tenemos entre manos con ComparerApp. También, se diferencia RSpec de otros framework como Cucumber por ejemplo, ya que la documentación en vez de realizarse de una forma apegada al código se realiza de una forma más externa y comprensible para gente ajena al código. En este caso al ser afines los que acceden al proyecto, nos conviene que dicha documentación sea cercana al código, y por ello, el uso de RSpec.
2. A su vez, se ha hecho elección de ella pues permite combinarlo con otras herramientas que se pueden implementar en cualquier momento y que se complementan para mejorar la calidad de las pruebas así como el código resultante, véase combinaciones, por ejemplo, de RSpec con Capybara o Cucumber en caso de que fuera necesario. 
3. Otras razones del uso de RSpec es por la facilidad de tanto leer los test realizados como de "redactarlos". Es bastante esclarecedor la forma en la que se puede leer los fallos obtenidos en los test realizados, siendo por ende, más fácil así encontrar una solución a un error puntual. De hecho este apartado va de la mano con la buena documentación autogenerado de mano de RSpec.
4. RSpec hace uso de la llamada "Traditional Unit Testing" que significa que es posible hacer test de una clase o una parte de la aplicación de forma aislada del resto de la misma, proveyendo así de gran libertad a la hora de probar partes de nuestro código.
5. También nos encontramos con la posibilidad de, mediante aserciones **(expect)**, realizar las comprobaciones pertinentes que nos interese en diferentes casos, lo que significa que cuenta también con esa capacidad de realizar aserciones y no solo de ser un test runner.

## Elección/Decisión
Por tanto y debido a los criterios citados anteriormente, se ha hecho elección de este framework, RSpec, para realizar los diversos test que involucrarán al proyecto. Dejamos de lado bibliotecas de aserciones por la comodidad que tiene RSpec de incluir la capacidad de manejar los test, y las comparaciones con frameworks como Cucumber o Capybara se realizan en los propios criterios de RSpec, dejándonos así con la herramienta más adecuada de las que presentamos.
