# Test Runner

## RSpec 

RSpec es una "Testing tool" para Ruby la cual fue creada para dar soporte a los proyectos TDD, es decir, a aquellos cuyo desarrollo va guiado por las pruebas que se realizan sobre el código.

## Criterios

 Algunos aspectos de esta herramienta para tener en cuenta su elección vienen dada por:

1. Primeramente por ser una, sino la más usada, en la producción de aplicaciones, teniendo una gran variedad de documentación y de tutoriales a sus espaldas que facilitan su uso y adaptación para el proyecto que tenemos entre manos con ComparerApp. 
2. A su vez, se ha hecho elección de ella pues permite combinarlo con otras herramientas que se pueden implementar en cualquier momento y que se complementan para mejorar la calidad de las pruebas así como el código resultante, véase combinaciones, por ejemplo, de RSpec con Capybara. 
3. Otras razones del uso de RSpec es por la facilidad de tanto leer los test realizados como de "redactarlos". Es bastante esclarecedor la forma en la que se puede leer los fallos obtenidos en los test realizados, siendo por ende, más fácil así encontrar una solución a un error puntual. De hecho este apartado va de la mano con la buena documentación autogenerado de mano de RSpec.
4. Esto mismo diferencia RSpec de otros framework como Cucumber por ejemplo, donde la documentación en vez de realizarse de una forma apegada al código se realiza de una forma más externa y comprensible para gente ajena al código. En este caso al ser afines los que acceden al proyecto, nos conviene que dicha documentación sea cercana al código, y por ello, el uso de RSpec.
5. RSpec hace uso de la llamada "Traditional Unit Testing" que significa que es posible hacer test de una clase o una parte de la aplicación de forma aislada del resto de la misma, proveyendo así de gran libertad a la hora de probar partes de neustro código.

## Elección
Por tanto y debido a los criterios citados anteriormente, se ha hecho elección de este framework para realizar los diversos test que involucrarán al proyecto.
