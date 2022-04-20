# doomovie

OVERVIEW

La app consta básicamente de dos vistas principales.
 
 1. La vista del listado de las películas más populares con una paginación. Se ha intentado hacer lo más minimalista posible y un diseño tipo oscuro.
 
 2. La vista del detalle de la película. Se muestra la mayoría de los datos relevantes de la película. Se inclye la funcionalidad de dar Like, Faovorito o coleccionar. No está conectado con base de datos ya que requiere de un un back específico.
 
 3. Se ha añadido una localización con soporte para 5 idiomas (español, inglés , francés , italiano y alemán). Basta con cambiar los idiomas preferidos en el menu de ajustes del iphone.
 
 4. Se ha añadido el core data para las imágenes que se van descargando en la app.


ESTRUCTURA

- Components: componentes que se reutilizan por toda la aplicación. La idea es la de generar un set de componentes donde se le pasan determinadas propiedades que cambian el aspecto de los mismos.

- Config: configuración básica del proyecto. En este caso sólo relacionado con colores.

- Enums: Enums globales utilizados para ciertos componentes. Se definen de manera global para que todos los componentes utilicen las mismas referencias.

- Languages: JSON con los lenguajes disponibles en la app. Son json con traducciones.

- Persistence: Aquí se incluye todo lo relacionado con persitencia en la aplicación. Utilizo Core Data para persistencia de ciertos datos. En este caso solamente guardo las imágenes de la app mediante un Id. Si las imagenes existen en el core data, no se hace la petición a la api, por lo que sólo se descargan la primera vez. Para datos sencillos de tipo primitibo suelo usar UserDefaults (por ej guardar el token o datos básicos del usuario)

- Services: Llamadas a la api mediante Alamofire. (Pod de peticiones http)

- Utils: Todo lo relacionado con métodos que se usan a lo largo de toda la aplicación.

- Views: Todas las vistas en SwiftUI. Normalmente utilizo una carpeta por cada módulo. En el caso de que una vista se utilice en varias vistas, suelo utilizar una carpeta "shared", donde reutilizar componentes. Si el componente es de tipo genérico y se usa por toda la app, iría a la carpeta "components".

OTROS

- Environment: Suelo utilizar un environment object para variables globales que cambian en la app, como por ejemplo mostrar u ocultar un loader. Suelo utilizar variables de entorno cuando es necesario comunicar componentes en almenos 3 niveles de profundidad. Para 2 niveles o 1 nivel suelo usar variables de tipo @State en el padre y variables normales y @Binding en los hijos.

- Localización: Normalmente utilizo un submodulo de git con todos los json de idiomas. Ya que pueden ser utilizados del mismo modo entre Front / Back / Mobile. En este caso lo he añadido a nivel local ya que la Api nos viene dada por themoviedb

- ViewModels VS extensiones: Antes utilizaba viewModels para cada componente. Sin embargo he ido simplifando y he llegado a la conclusión de que utilizar extensiones es un recurso que ayuda a aislar la lógica de la vista de igual modo y además simplica la declaración de variables. 

- Storyboards & Controllers : Al utilizar swiftui (que ha llegado para quedarse) , ya no utilizo storyboards y controladores para utilizar simplemente Vistas, con sus respectivas extensiones o viewModels (yo utilizo extensiones.)
