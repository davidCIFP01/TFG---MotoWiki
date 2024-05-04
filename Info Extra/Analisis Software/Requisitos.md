

# REQUISITOS FUNCIONALES


- **1 - Gestión de Usuarios** 
  - **1.1-** Registrar Usuario
  - **1.2-** Iniciar Sesión
  - **1.3-** Modificar Datos Usuario
  - **1.4-** Marcar Motocicleta Favorita
  - **1.5-** Desmarcar Motocicleta Favorita
  
  
- **2 - Gestión de Noticias** 
  - **2.1-** Crear Noticia
  - **2.2-** Modificar Noticia
  - **2.3-** Borrar Noticia
  

- **3 - Gestión de Marcas** 
  - **3.1** Crear Marca
  - **3.2** Modificar Marca
  - **3.3** Suspender/Borrar Marca
  

- **4 - Gestión de Motocicletas** 
  - **4.1** Crear Motocicleta
  - **4.2** Modificar Datos Motocicleta
  - **4.3** Borrar Motocicleta
  - **4.4** Crear Ofertas
  - **4.5** Modificar Oferta
  - **4.6** Borrar Oferta
  - **4.7** Mostrar Motocicleta por Parametros

- **5 - Gestión de Administrador** 
  - **5.1-** Gestionar Usuarios
  - **5.2-** Gestionar API
  - **5.3-** Ver Registros de Modificaciones

- **6 - Sistema de Busqueda** 
  - **6.1-** Busqueda tanto por Marca como Motocicleta.
  - **6.2-** Gran sección de Filtros para busqueda de Motocicletas.
  - **6.3-** Sistema de Busqueda de Usuario y Logs ( Para administradores ).



# REQUISITOS NO FUNCIONALES

- **1 - Rendimiento** 
  - **1.1-** No cargar módulos NO necesarios.
  - **1.2-** Hacer llamadas API/BD solo cuando sea necesario.
  - **1.3-** LLamadas con demasiada informacion SOLO en páginas específicas.

- **2 - Seguridad** 
  - **2.1-** Tener bastante control de los usuarios con permisos (Administradores).
  - **2.2-** Habrá varios niveles de permisos para evitar problemas mayores.

- **3 - Usabilidad** 
  - **3.1-** La página contará con una interfaz muy intuitiva.
  - **3.2-** Contará con una gran cantidad de accesos a las distintas páginas de esta ( por ejemplo enlaces a dedicadas de motocicletas/marcas ) para facilitar el llegar a las distintas secciones de esta.

- **4 - Fiabilidad** 
  - **4.1-** La página solo tendrá información real y verificada por los distintos administradores de la página.
  - **4.2-** La página estará constantemente siendo actualizada, corrigiendo errores o imperfecciones en los datos que pueda haber.

- **5 - Accesibilidad** 
  - **5.1-** Se intentará en la medida de lo posible hacer la web lo más accesible para usuarios con discapacidades cumpliendo con los estándares WCAG.
  
- **6 - Eficiencia del código** 
  - **6.1-** El código estará estructurado de la forma más eficientemente posible, evitando llamadas o cargas de archivos innecesarios.
  - **6.2-** Estructuración de carpetas con Modelo-Vista-Controlador, haciendo muy fácil la prosperación del código con comentarios y para futuras actualizaciones internas de la web.
  

