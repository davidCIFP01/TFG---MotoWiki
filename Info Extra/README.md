
# TFG - MotoWiki | 2ºDAW - David Rodriguez Aparicio


## ENTREGA PARCIAL 1 ( Anteproyecto )

- Nombre de la aplicación -> MotoWiki
  
- Investigación previa y explicación de la idea general
    
    - Revisado de apps alternativas/parecidas, destacando sus puntos fuertes y débiles
        -  [MotoFichas](https://www.motofichas.com/) -> Es una página que recoge la mayoría de fichas técnicas de motocicletas del mercado.
           - Su punto fuerte es la cantidad de información que tiene gracias al tiempo que lleva activa además de su popularidad.
           - Su punto débil es que es una página poco amigable para personas con bajos conocimientos del tema, además de esta muy comercializada.

        -  [Motos.net](https://motos.coches.net/) -> Es una página de venta de vehiculos, tanto de primera como de segunda mano.
           -  Su punto fuerte es el gran mercado que se ha creado en torno a esta aplicación.
           -  Su punto débil es que está limitada a la compra-venta del producto.
    
    - Explicación de la idea general en la que se basa vuestra app y que problemas soluciona
        -  La idea principal de la aplicación  será hacer una especie de Wiki para todo lo relacionado con las motocicletas, con un estilo similar a la wikipedia, haciendo que los distintos usuarios (elegidos por los administradores) puedan añadir contenido a la web, principalmente para completar la wiki como tal, corregir errores o añadir enlaces a lugares en los que comprar/encontrar el contenido en cuestión.
    
    
    - Lista de objetivos principales a los que pretendéis llegar al finalizar el proyecto
        - Conseguir una web completamente funcional, con todos los apartados y requisitos cumplidos.
        - Que sea una web fiel al diseño y propósito Inicial.
        - Que sea una aplicación completamente manejable por los usuarios, y actualizable sin necesidad de tener conocimientos del código.
        - Tener una interfaz clara, que sea accesible y de fácil uso.
  
    - Alternativas del Proyecto
      - Gestor de Portfolios Web -> La idea era realizar una aplicación muy polivalente para que los usuarios pudiesen montar su propio portfolio en la web, con muchas posibilidades y haciendo que el acceso a este fuese mucho más sencillo. ( Finalmente descartado por su posible complejidad y busqueda de opciones más factibles )
      - Gestor de APIs -> La idea de este proyecto era similar al anterior, pero dando la posibilidad a los usuarios de montar sus propias APIs desde el servicio web, y darle acceso a estos facilmente. ( Pienso que era buena idea, pero que se podía quedar algo corta pero compleja. )
      - Página Web de Reservas de Restaurante -> Es una de las ideas más típicas para este tipo de proyectos, te permite usar todo lo aprendido sin complejidad alguna. ( Finalmente descartada por ser muy típica, y buscar algo más original y personal )
  

- Planificación de las diferentes fases que componen el proyecto
    - Diagrama de Gantt realizado con herramientas como Excel, Tom's Planner, diagrams.net o GanttProject
        - ![diagramaGant](./Planificacion/Diagrama%20Gant.png)
    
    - Ciclo de desarrollo elegido para realizar el trabajo
        - El tipo de desarrollo elegido finalmente, es una mezcla entre el desarrollo iterativo e incremental, con algunos toques del desarrollo ágil ( ya que teniendo una pequeña idea de como será el proyecto, he empezado a desarrollar el diseño y a medida que avanzaba se iban determinando los requisitos de la aplicación. ) basandose sobre todo en avances graduales y la iteración sobre el diseño, una vez terminado, entrariamos en la programación y desarrollo de la web con un modelo en cascada.
  
    
  

## ENTREGA PARCIAL 2 ( Primera entrega parcial )

- Análisis software
    - Requisitos funcionales  **( ✓ )**
    - Requisitos no funcionales **( ✓ )**
    - Casos de uso
  

- Diseño lógico
    - Arquitectura MVC **( ✓ )**
    - Modelo Entidad-Relación **( ✓ )**
    - Diagrama de clases
  
  
- Diseño de interfaces / Diseño Centrado en el Usuario (DCU)
    - Guía de estilo abreviada
    - Prototipo de baja fidelidad **( X )**
    - Prototipo de alta fidelidad 


-------------------------------------------------------------------------------

Con estos ítems podréis ir rellenando los siguientes apartados de la memoria:
- Introducción
    - Explicación de la idea general
    - Estudio de alternativas
    - Lista de objetivos principales
- Planificación
    - Diagrama de Gantt
    - Ciclo de desarrollo




  




## Secciones de Moto-Wiki

## VISTA USUARIO

- Página Inicio  **(DISEÑO ✓ / MOBILE ✓ )**

- Inicio Sesión / Registro **(DISEÑO ✓ / MOBILE ✓ )**

- Perfil (Puede que se le añada una parte social, en la que publicar información extra.) **(DISEÑO ✓ / MOBILE ✓ )**

- Dedicada Motocicleta / Motos -> ( Cambia dependiendo del $_GET ) **(DISEÑO ✓ / MOBILE ✓ )**

- Dedicada Marca (Incluye: Info + Ultimos Modelos ) **(DISEÑO ✓ / MOBILE ✓ )**
  
- Dedicada de Noticias ?¿
  
- Galeria de Imagenes ?¿ -> De esta forma los usuarios podrían subir imágenes que podrían servir de ayuda.

<!-- Habra mucho juego con las consultas SQL para las busquedas. -->

## VISTA ADMINISTRADOR

- Página Inicio **(DISEÑO ✓ / MOBILE ✓ )**

- Inicio Sesión / Registro  **(DISEÑO ✓ / MOBILE ✓ )**

- Dedicada Motocicleta + Funciones Extras 
  
- Dedicada Marca + Funciones Extras 

- Gestión de Usuarios / Administradores 

- Gestión y configuración API. 


## OTROS COMPONENTES 

- Menú desplegable para marcas 
- Scroll para imágenes ?¿