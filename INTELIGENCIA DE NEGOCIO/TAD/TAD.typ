#import "template/template_umu.typ": *

#show: template_umu.with(
  title: "Trabajo Académicamente Dirigido",
  subtitle: [
    Análisis de los indicadores y \ del negocio
    a estudiar para el TAD
  ],
  authors: (
    (
      name: "Juan Luis Serradilla Tormos",
      affiliation: [UMU]
    ),
  ),
  date: "noviembre de 2024",
  location: "Murcia, España"
)

= Introducción
== Contexto del negocio
Game Pass es un servicio de suscripción de Microsoft que permite a los usuarios acceder a una amplia biblioteca de juegos por una cuota mensual. Los usuarios pueden jugar en consolas Xbox, PC o dispositivos móviles, y ocasionalmente reciben descuentos para adquirir juegos en propiedad. Además, se venden consolas Xbox y accesorios en distintas tiendas físicas y online, lo que genera ingresos adicionales.

== Estrategia comercial
La estrategia de Game Pass y Xbox se centra en aumentar el número de suscriptores y las ventas de juegos, consolas y accesorios. La suscripción a Game Pass busca incentivar tanto la retención de clientes como la captación de nuevos usuarios mediante contenido exclusivo y descuentos.

== Medios de venta
Microsoft utiliza su tienda digital Xbox y otros canales como tiendas físicas y sitios web de socios comerciales. Además, se apoya en campañas publicitarias en redes sociales y eventos como lanzamientos de juegos y hardware.

\
= Objetivos del negocio
== Objetivo general
El objetivo es maximizar los ingresos mediante el aumento de suscripciones a Game Pass y la venta de juegos y consolas. También se busca optimizar la satisfacción del cliente y la retención de suscriptores. Por ello, se estudiarán 4 factores críticos de éxito (CFI):
- *Aumentar los ingresos de Game Pass y Xbox:*  Aumentar las ventas es el objetivo principal de cualquier negocio, por ello, se aumentarán los ingresos de Game Pass y Xbox. Para poder llevar a cabo esta tarea, se monitorizará a fondo las suscripciones activas al servicio, las ventas de las consolas y la compra de los juegos. De esta forma, se podrá estudiar el perfil de los clientes y poder tomar acciones para el correcto desempeño de las ventas de la empresa.
- *Incrementar la fidelización de clientes:* Cualquier empresa de servicio necesita que una base de clientes fieles. Por ello, se monitorizará la retención de los subscriptores, para así poder evaluar sus perfiles y tomar decisiones que intervengan en la fidelización de estos. Con una base de clientes fieles, los beneficios aumentarán.
- *Impulsar la interacción y el uso del Game Pass:* Es necesario ofrecer un producto de calidad para que los clientes se sientan satisfechos y los beneficios aumenten. Por ello, impulsar la interacción de los clientes con el servicie es fundamental, ya que a mayor número de juegos jugados y más cantidad de descuentos utilizados aumentará la visión de calidad del producto. Por ello es necesaria una revisión constante del catálogo de juegos y del catálogo de ofertas.
- *Mejorar la satisfacción del cliente:* Es necesario monitorizar la satisfacción de los clientes. Cuando mayor sea, mejor se hablará del servicio y aparecerán más potenciales compradores. 


== Indicadores principales (KPIs)

+ *Aumentar los ingresos de Game Pass y Xbox:*
  - *KPI 1:* Incrementar un 15% las suscripciones activas de Game Pass cada trimestre.
  - *KPI 2:* Aumentar las ventas de consolas Xbox un 10% en cada temporada de lanzamientos importantes.
  - *KPI 3:* Incrementar en un 20% las compras de juegos (venta individual) por trimestre.

+ *Incrementar la fidelización de clientes:*
  - *KPI 4:* Alcanzar un 80% de retención de suscriptores de Game Pass cada trimestre..
  - *KPI 5:* Reducir en un 10% el número de cancelaciones de suscripción tras el primer mes cada trimestre.

+ *Impulsar la interacción y el uso de Game Pass:*
  - *KPI 6:* Aumentar en un 10% el número de horas jugadas cada trimestre por los suscriptores.
  - *KPI 7:* Lograr que al menos el 60% de los compradores activen descuentos para comprar juegos cada mes.

+ *Mejorar la satisfacción del cliente:*
  - *KPI 8:* Mantener un índice de satisfacción superior a 8/10 en encuestas de suscriptores cada semestre.
  - *KPI 9:* Disminuir en un 15% el número de tickets de soporte relacionados con problemas de acceso o rendimiento.

== Resumen de los indicadores

// Configuraciones de la tabla
#show table.cell: set par(justify: false)
#show table.cell: set text(size: 10pt)
#show table.cell.where(y: 0): strong
#show table.cell.where(y: 0): set text(white, size: 11pt)
#set table(
  stroke: none,
  gutter: 0.2em,
  fill: (x,y) => if (y == 0){
    rgb("#40729a")
  }
  else{
    rgb("#f2f2f2")
  }
)

#align(
  center,
    table(
    align: center + horizon,
    columns: (1fr, 1fr, 0.5fr, 0.75fr, 0.75fr, 2fr),
    table.header(
      [Factor crítico de éxito],
      [Indicador],
      [Id],
      [Tipo indicador],
      [Meta],
      [Acción]
    ),

    table.cell(
      rowspan: 3,
      [Aumentar los ingresos de Game Pass y Xbox]
    ),
    [Incrementar un 15% las suscripciones activas de Game Pass cada trimestre],
    [KPI_1],[Driver],[Aumento del 15% trimestral],[
      Realizar más campañas de publicidad \ \
      Ofrecer descuentos temporales a nuevos suscriptores
      ],
    [Aumentar las ventas de consolas Xbox un 10% en cada temporada de lanzamientos importantes],
    [KPI_2],[Outcome],[Aumento del 10% en lanzamientos clave],[
      Realizar promociones y paquetes especiales en lanzamientos \ \
      Incentivar la venta cruzada de consolas con otros productos de Xbox
    ],
    [Incrementar en un 20% las compras de juegos (venta individual) cada trimestre.],
    [KPI_3],[Outcome],[Aumento del 20% en compras individuales],[
      Ofrecer descuentos exclusivos en títulos populares para suscriptores \ \
      Promocionar activamente los juegos a través de recomendaciones en la plataforma
    ],

    table.cell(
      rowspan: 2,
      [Incrementar la \ fidelización de clientes]
    ),
    [Alcanzar un 80% de retención de suscriptores mensuales de Game Pass],
    [KPI_4],[Driver],[80% de retención cada trimestre],[
      Mejorar el contenido de bienvenida y tutoriales \ \
      Crear un programa de lealtad para suscriptores antiguos
    ],
    [Reducir en un 10% el número de cancelaciones de suscripción tras el primer mes cada trimestre],
    [KPI_5],[Outcome],[Disminución del 10% en cancelaciones],[
      Implementar encuestas de salida para conocer las causas de cancelación \ \
      Ofrecer una extensión gratuita en caso de duda al cancelar
    ],

    table.cell(
      rowspan: 2,
      [Impulsar la interacción y el uso de Game Pass]
    ),
    [Aumentar en un 25% el número de juegos jugados por usuario activo cada trimestre],
    [KPI_6],[Driver],[Incremento del 10% de horas jugadas],[
      Promocionar recomendaciones personalizadas de juegos \ \
      Añadir recompensas por probar juegos nuevos cada mes
    ],
    [Lograr que al menos el 60% de los suscriptores activen descuentos especiales para comprar juegos de Game Pass],
    [KPI_7],[Driver],[Activación del 60% de descuentos],[
      Visibilizar los descuentos disponibles en el panel principal de Game Pass \ \
      Recordar descuentos mediante notificaciones y correos electrónicos
    ],

    table.cell(
      rowspan: 2,
      [Mejorar la satisfacción del cliente]
    ),
    [Mantener un índice de satisfacción superior a 8/10 en encuestas de suscriptores cada semestre],
    [KPI_8],[Outcome],[Índice de satisfacción > 8/10],[
      Reducir los tiempos de respuesta en soporte \ \
      implementar mejoras continuas en base a feedback de usuarios
    ],
    [Disminuir en un 15% el número de tickets de soporte relacionados con problemas de acceso o rendimiento],
    [KPI_9],[Result],[Reducción del 15% en tickets de soporte],[
      Crear guías y tutoriales sobre acceso y solución de problemas \ \
      Desarrollar un sistema de autogestión para resolver incidencias comunes
    ],
  )
)

\
A lo largo de los anteriores apartados ya se ha comentado de manera general los análisis y acciones que se podrían seguir para lograr cada uno de los KPIs establecidos en el caso de Game Pass y Xbox. Estas acciones se agrupan en cuatro áreas clave: aumentar los ingresos, incrementar la fidelización del cliente, impulsar la interacción con Game Pass y mejorar la satisfacción del cliente.

Para aumentar los ingresos de Game Pass y Xbox, es fundamental analizar cuáles son los juegos más jugados y comprados por los suscriptores, así como identificar los perfiles de usuarios que generan mayores ingresos. En el caso de los juegos menos populares, se pueden ofrecer descuentos adicionales, incluirlos en paquetes con títulos destacados o publicitarlos activamente en la plataforma y redes sociales. También es esencial monitorear el impacto de las promociones y adaptar la estrategia de precios y descuentos para maximizar la conversión. Por otro lado, las temporadas clave, como lanzamientos importantes o eventos de gaming, deben aprovecharse para aumentar las ventas de consolas y accesorios mediante promociones exclusivas.

Para incrementar la fidelización del cliente, es crucial garantizar que los suscriptores reciban valor continuo del servicio. Esto puede lograrse mediante la incorporación de contenido exclusivo, incentivos de lealtad, y programas de recompensas que premien la antigüedad o la interacción. También es útil implementar encuestas de salida para conocer las razones detrás de las cancelaciones, lo que permitirá ajustar aspectos del servicio que puedan estar desmotivando a los usuarios. Mantener la comunicación activa con los suscriptores mediante notificaciones personalizadas y contenido relevante también contribuye a fortalecer la relación con el cliente.

Para impulsar la interacción con Game Pass, se debe garantizar un catálogo de juegos atractivo y variado, actualizado periódicamente con nuevos lanzamientos. Implementar recomendaciones personalizadas basadas en los hábitos de juego de los usuarios ayudará a aumentar el uso del servicio. Además, incentivar a los usuarios para que exploren nuevos juegos mediante recompensas o logros especiales puede mejorar significativamente el engagement. También es importante visibilizar los descuentos y promociones en la interfaz de usuario para maximizar su uso.

Finalmente, para mejorar la satisfacción del cliente, es esencial priorizar la calidad del soporte técnico y la experiencia del usuario. Reducir los tiempos de respuesta en las consultas y resolver de manera proactiva los problemas comunes a través de guías y tutoriales claros puede mejorar significativamente la percepción del servicio. Además, recopilar y analizar continuamente el feedback de los usuarios a través de encuestas permitirá implementar mejoras constantes que respondan a sus necesidades y expectativas. Por último, la comunicación activa sobre las novedades del servicio y la atención personalizada contribuyen a mantener altos niveles de satisfacción.

En conjunto, estas acciones buscan no solo alcanzar los KPIs definidos, sino también construir una base sólida de usuarios comprometidos y satisfechos que impulse el éxito continuo de Game Pass y Xbox.

= Diseño lógico
En este apartado se mostrará y explicará el diseño de los diferentes cubos que se han considerado necesarios 
para la consecución de los objetivos comentados anteriormente.

\
== Definición de los cubos: granularidad y medidas
Como se ha podido observar en el apartado dedicado a los objetivos del negocio, los KPIs definidos para Game Pass y Xbox abarcan diversas áreas y procesos de negocio. Sin embargo, esto no implica que se deba crear un cubo específico para cada indicador, ya que algunos están estrechamente relacionados y pueden agruparse en un mismo cubo. Además, hay KPIs en los que la dimensión temporal tiene un papel clave, lo que requiere combinar tablas transaccionales para registrar eventos detallados con tablas snapshot que permitan analizar la evolución del negocio a lo largo del tiempo.

Dado que los procesos de suscripción a Game Pass y ventas de juegos y consolas son los más significativos para este análisis, sus tablas de hechos serán las que albergarán la mayor cantidad de información. Estos cubos estarán orientados principalmente al estudio de los ingresos recurrentes, las tendencias de consumo, y la interacción de los usuarios con el catálogo de productos.

A continuación, se describen los cubos diseñados, especificando la granularidad de las tablas de hechos y proporcionando una descripción general de las medidas asociadas a cada cubo:

- *Cubo de suscripciones a Game Pass:*
  - *Descripción:* Este proceso captura todas las actividades relacionadas con las suscripciones al servicio Game Pass, como altas, bajas y renovaciones. Se enfoca en medir el crecimiento y la retención de suscriptores, aspectos críticos para asegurar el flujo de ingresos recurrentes.
  - *Granularidad:* La granularidad a nivel de eventos individuales (como suscripciones, renovaciones y cancelaciones) es típica de las tablas transaccionales, ya que cada fila representa una única acción realizada por un usuario en un momento específico.
  - *Tasa de refresco:* Diaria, ya que se realizan suscripciones y cancelaciones constantemente.
  - *Tipo de tabla de hecho:* Tabla transaccional, ya que se registran transacciones individuales.
  - *Medidas:* 
    - *Fecha de transacción:* Fecha en la que se registra la transacción (sea alta, renovación o cierre). *Tipo:* No aditiva. *Obtención:* Se registra la fecha en la que el usuario se suscribió al servicio.
    - *Tipo de transacción:* Variable categórica que indica el tipo de transacción (`alta`, `cancelación`, `renovación`). *Tipo:* No aditiva. *Obtención:* Se registra el tipo de acción realizada por el usuario.
    - *Duración de suscripción:* Variable categórica que clasifica el tiempo de suscripción (`mensual`, `anual`). *Tipo:* No aditiva. *Obtención:* Se registra el tipo de plan al que se suscribe el usuario.
    - *Tipo de suscripción:* Variable categórica que clasifica el tipo de suscripción (`PC Game Pass`, `Game Pass Ultimate`). *Tipo:* No aditiva. *Obtención:* Se registra el tipo de plan al que se suscribe el usuario.
    - *Importe de la suscripción:* Valor total pagado por el suscriptor en la transacción sin descuentos. *Tipo*: Aditiva. *Obtención:* Valor mensual o anual pagado por el usuario según su plan.
    - *Importe mensual:* Valor pagado por mes para la suscripción. *Tipo*: Semi-aditiva. *Obtención:* Divide el importe total de la suscripción entre el número de meses del plan.
    - *Descuento aplicado:* Valor del descuento aplicado a la suscripción. *Tipo:* No aditiva. *Obtención:* Multiplica el precio base del plan por el porcentaje de descuento.
    - *Método de pago:* Variable categórica que registra el método utilizado para realizar el pago de la suscripción (`tarjeta crédito`, `tarjeta débito`, `paypal`). *Tipo:* No aditiva. *Obtención:* Se registra el método de pago utilizado por el usuario.

\
- *Cubo de Ventas de Juegos y Consolas*
  - *Descripción:* Este proceso abarca las transacciones de venta de juegos (individuales) y consolas Xbox en todos los canales de venta. Es fundamental para medir el éxito de los lanzamientos y el interés continuo en el catálogo de juegos.
  - *Granularidad:* Transacción individual por venta de juego o consola.
  - *Tasa de refresco:* Diaria.
  - *Tipo de tabla de hecho:* Transaccional (registra cada venta individual).
  - *Medidas:*
    - *Precio del producto:* Precio de venta por unidad del producto vendido en la transacción. *Tipo:* Aditiva. *Obtención:* Precio registrado del producto vendido.
    - *Coste del producto:* Precio de adquisición o producción por unidad del producto vendido. *Tipo:* Aditiva. *Obtención:* Costo registrado del producto vendido.
    - *Beneficio del producto:* Beneficio obtenido por la venta del producto. *Tipo:* Semi-aditiva. *Obtención:* Resta el costo del precio de venta.
    - *Descuento del producto:* Valor del descuento aplicado a la venta. *Tipo:* No aditiva. *Obtención:* Multiplica el precio base del producto por el porcentaje de descuento.
    - *Impuesto de venta:* Cantidad de impuesto aplicado a la venta. *Tipo:* Semi-aditiva. *Obtención:* Multiplica el precio base del producto por el impuesto correspondiente.

\
== Interrelación entre tablas de hechos y dimensiones 

=== Cubo de suscripciones a Game Pass

==== Dimensiones
- *Dimensión Suscriptor*
  - *Descripción:* Esta dimensión almacena información sobre los suscriptores del servicio Game Pass. Es clave para identificar y analizar características demográficas y comportamientos que influyen en la retención y adquisición de clientes.
  - *Atributos:*
    - *ID Suscriptor:* Identificador único para cada suscriptor.
    - *Nombre:* Nombre completo del suscriptor.
    - *Edad:* Rango de edad del suscriptor para análisis demográficos.
    - *Ubicación:* Región geográfica donde reside el suscriptor.
    - *Estado de la suscripción:* Si la suscripción está activa o cancelada.
    - *Fecha de alta:* Fecha en la que el suscriptor se registró en el servicio.
    - *Fecha de baja:* Fecha en la que el suscriptor canceló su suscripción.
    - *Antigüedad:* Tiempo en días transcurrido desde la fecha de alta (fecha de alta menos fecha actual).
    - *Número de bajas:* Cantidad de veces que el suscriptor ha cancelado la suscripción.
    - *Idioma preferido:* Idioma principal seleccionado por el suscriptor para la interfaz y el contenido.
    - *Dispositivos registrados:* Lista de dispositivos registrados por el suscriptor para acceder al servicio.
    - *Número de amigos o contactos:* Número de amigos o contactos en la red de Game Pass del suscriptor.
  - *Uso compartido:* Esta dimensión puede ser compartida con procesos relacionados con soporte técnico y campañas de fidelización.
  - *Observaciones:* Es una dimensión lentamente cambiante, ya que algunos atributos (como la ubicación o el estado de suscripción) pueden modificarse. Se gestionará utilizando la técnica Slowly Changing Dimension Tipo 2 para conservar el historial.

- *Dimensión Tiempo*
  - *Descripción:* Esta dimensión representa los aspectos temporales asociados a las suscripciones, como el inicio, renovación y cancelación. Es crucial para evaluar tendencias y ciclos de comportamiento.
  - *Atributos:*
    - *Fecha:* Fecha específica del evento (alta, renovación o cancelación).
    - *Mes:* Mes en el que ocurrió el evento.
    - *Trimestre:* Trimestre fiscal.
    - *Año:* Año en el que ocurrió el evento.
    - *Día de la semana:* Indica si el evento ocurrió en un día laborable o festivo.
    - *Hora del día:* Hora específica en la que ocurrió el evento (en formato hh:mm).
    - *Fin de semana / laborable:* Indica si el evento ocurrió en un día laborable o fin de semana.
    - *Festivo:* Identifica si la fecha es un día festivo en la región del usuario.
    - *Número de día del año:* Número de día en el año en el que ocurrió el evento (1-365/366).
    - *Estación del año:* Estación asociada al evento (invierno, primavera, verano, otoño).
  - *Uso compartido:* Dimensión conformada utilizada también en procesos relacionados con ventas y análisis de interacciones con juegos.
  - *Observaciones:* No es lentamente cambiante, ya que la información temporal es estática y no sufre modificaciones.

- *Dimensión Promoción*
  - *Descripción:* Esta dimensión captura la información de las promociones o descuentos aplicados a las suscripciones de Game Pass, permitiendo evaluar su impacto en la captación y retención de clientes.
  - *Atributos:*
    - *ID Promoción:* Identificador único de la promoción.
    - *Tipo de Promoción:* Clasificación (descuento, prueba gratuita, etc).
    - *Fecha de inicio:* Fecha en la que la promoción comenzó.
    - *Fecha de fin:* Fecha de finalización de la promoción.
    - *Descuento aplicado:* Porcentaje o cantidad de descuento ofrecido.
    - *Compatibilidad con otros descuentos:* Si la promoción puede combinarse con otras ofertas o descuentos (Sí, No).
    - *Promoción combinada:* Identifica si la promoción se aplicó junto a otras ofertas.
    - *Restricciones de uso:* Limitaciones asociadas a la promoción (por ejemplo, solo nuevos usuarios).
    - *Canales activos:* Canales donde se aplicó la promoción (online, tienda física).
    - *Usuarios objetivo:* Segmento de clientes al que se dirigió la promoción (nuevos, activos, etc.).
  - *Uso compartido:* También se puede usar en el cubo de ventas para analizar promociones conjuntas de suscripciones y juegos.
  - *Observaciones:* No es lentamente cambiante, ya que las promociones tienen una duración fija y predefinida.

- *Dimensión Plataforma de Juego*
  - *Descripción:* Esta dimensión describe las plataformas desde las cuales los suscriptores acceden al servicio Game Pass. Es útil para analizar las preferencias de los usuarios y optimizar el contenido según las plataformas más utilizadas.
  - *Atributos:*
    - *ID plataforma:* Identificador único de la plataforma.
    - *Nombre:* Nombre de la plataforma (Xbox, PC, móvil).
    - *Tipo de plataforma:* Clasificación por categoría (consola, escritorio, móvil).
    - *Región de disponibilidad:* Regiones donde la plataforma está disponible.
    - *Versión del sistema operativo:* Versión específica del sistema operativo utilizado en la plataforma.
    - *Capacidad gráfica:* Nivel de capacidad gráfica del dispositivo (bajo, medio, alto).
    - *Resolución de pantalla:* Resolución máxima admitida por la plataforma.
    - *Modelo del dispositivo:* Nombre o versión específica del dispositivo (por ejemplo, Xbox Series X).
    - *Tipo de conexión:* Tecnología de conexión utilizada (cable, Wi-Fi, datos móviles).
  - *Uso compartido:* Esta dimensión puede ser compartida con análisis de ventas de suscripciones.
  - *Observaciones:* Es una dimensión estática, ya que los datos no cambian frecuentemente.

- *Dimensión Región*
  - *Descripción:* Representa la ubicación geográfica donde el usuario realizó la transacción, permitiendo análisis de tendencias de consumo por región.
  - *Atributos:*
    - *Id Región:* Identificador único de la región.
    - *Nombre de región:* Nombre de la región o país.
    - *Zona horaria:* Zona horaria de la región.
    - *Población objetivo:* Tamaño de la población en esa región.
    - *Población activa:* Porcentaje de la población económicamente activa en la región.
    - *Tasa de penetración de internet:* Porcentaje de hogares con acceso a internet.
    - *Densidad de población:* Densidad de población de la región.
    - *Índice de competencia:* Nivel de presencia de competidores en la región (como Sony).
    - *Moneda local:* Moneda utilizada en la región.
    - *Idiomas principales:* Idiomas hablados en la región.
  - *Uso compartido:* También puede emplearse en análisis de suscriptor.
  - *Observaciones:* Es una dimensión estática, ya que los datos geográficos no cambian con frecuencia.


==== Esquema del cubo
#align(center)[
  #figure(
    image("images/esquema_suscripcionesgamepass.svg", width: 100%),
    caption: [Esquema del cubo de suscripciones a Game Pass]
  )
]

\
=== Cubo de Ventas de Juegos y Consolas

==== Dimensiones
- *Dimensión Producto*
  - *Descripción:* Esta dimensión almacena información sobre los juegos y consolas vendidos. Es esencial para identificar tendencias de consumo y analizar qué productos generan mayores ingresos.
  - *Atributos:*
    - *ID Producto:* Identificador único del producto.
    - *Categoría:* Clasificación del producto (juego, consola).
    - *Descuento:* Indica si se ha realizado un descuento (Sí, No).
    - *Plataforma:* Plataforma compatible (Xbox, PC, multiplataforma).
    - *Fecha de lanzamiento:* Fecha en la que el producto fue lanzado al mercado.
    - *Fabricante:* Compañía que desarrolló el producto (por ejemplo, Microsoft, Bethesda).
    - *Franquicia asociada:* Serie o franquicia a la que pertenece un juego (por ejemplo, Halo, Forza).
    - *Formato de venta:* Tipo de producto (físico, digital).
    - *Edad recomendada:* Clasificación por edad del producto (PEGI 3, PEGI 18, etc.).
    - *Idioma disponible:* Idiomas en los que está disponible el producto.
  - *Uso compartido:* También se puede usar en procesos relacionados con análisis de inventario o campañas de marketing.
  - *Observaciones:* Es una dimensión lentamente cambiante, especialmente en atributos como la plataforma o el nombre. Se gestionará utilizando el modelo Slowly Changing Dimension Tipo 2 para registrar los cambios.

- *Dimensión Tiempo*
  - *Descripción:* Representa los aspectos temporales relacionados con las ventas, como la fecha en que se realizaron las transacciones. Permite identificar patrones de consumo y estacionalidades.
  - *Atributos:*
    - *Fecha:* Fecha específica del evento (alta, renovación o cancelación).
    - *Mes:* Mes en el que ocurrió el evento.
    - *Trimestre:* Trimestre fiscal.
    - *Año:* Año en el que ocurrió el evento.
    - *Día de la semana:* Indica si el evento ocurrió en un día laborable o festivo.
    - *Hora del día:* Hora específica en la que ocurrió el evento (en formato hh:mm).
    - *Temporada de lanzamiento:* Temporada asociada al lanzamiento de un juego o consolas.
    - *Fin de semana / laborable:* Indica si el evento ocurrió en un día laborable o fin de semana.
    - *Festivo:* Identifica si la fecha es un día festivo en la región del usuario.
    - *Número de día del año:* Número de día en el año en el que ocurrió el evento (1-365/366).
    - *Estación del año:* Estación asociada al evento (invierno, primavera, verano, otoño).
  - *Uso compartido:* Dimensión conformada utilizada también en el cubo de suscripciones a Game Pass y análisis de campañas promocionales.
  - *Observaciones:* No es lentamente cambiante, ya que la información temporal es estática.

- *Dimensión Canal de Venta*
  - *Descripción:* Almacena información sobre los canales a través de los cuales se realizaron las ventas, como tiendas físicas u online. Es fundamental para evaluar el desempeño de cada canal.
  - *Atributos:*
    - *ID Canal:* Identificador único del canal.
    - *Tipo de Canal:* Clasificación del canal (físico, online).
    - *País del canal:* País donde opera el canal de venta.
    - *Propiedad del canal:* Si el canal es propio (Microsoft) o externo.
    - *Costo de operación:*  Costos asociados al mantenimiento del canal.
    - *Tipo de usuario del canal:* Perfil del cliente principal del canal (corporativo, individual).
    - *Capacidad de distribución:* Cantidad máxima de unidades que el canal puede manejar.
    - *Métodos de pago aceptados:* Lista de métodos de pago admitidos por el canal (tarjetas de crédito, PayPal, efectivo).
    - *Dispositivo de acceso al canal:* Dispositivos desde los cuales los usuarios pueden acceder al canal (PC, móvil, consola).
  - *Uso compartido:* También puede utilizarse en análisis de inventario y promociones.
  - *Observaciones:* Es lentamente cambiante, ya que los canales pueden actualizarse o cambiar de nombre. Se usará el modelo Slowly Changing Dimension Tipo 2 para gestionar estos cambios.

- *Dimensión Promoción*
  - *Descripción:* Captura la información relacionada con las promociones o descuentos aplicados en las ventas. Es clave para medir el impacto de las campañas promocionales.
  - *Atributos:*
    - *ID Promoción:* Identificador único de la promoción.
    - *Tipo de Promoción:* Clasificación (descuento, paquete especial, etc).
    - *Fecha de inicio:* Fecha de comienzo de la promoción.
    - *Fecha de fin:* Fecha de finalización de la promoción.
    - *Descuento aplicado:* Porcentaje o cantidad de descuento ofrecido.
    - *Compatibilidad con otros descuentos:* Si la promoción puede combinarse con otras ofertas o descuentos.
    - *Promoción combinada:* Identifica si la promoción se aplicó junto a otras ofertas.
    - *Restricciones de uso:* Limitaciones asociadas a la promoción (por ejemplo, solo nuevos usuarios).
    - *Canales activos:* Canales donde se aplicó la promoción (online, tienda física).
    - *Usuarios objetivo:* Segmento de clientes al que se dirigió la promoción (nuevos usuarios, renovaciones, etc.).
  - *Uso compartido:* Dimensión conformada compartida con el cubo de suscripciones para medir el impacto de promociones combinadas.
  - *Observaciones:* No es lentamente cambiante, ya que las promociones suelen tener una duración fija.

- *Dimensión Región*
  - *Descripción:* Representa la ubicación geográfica donde se realizaron las ventas, permitiendo análisis de tendencias de consumo por región.
  - *Atributos:*
    - *Id Región:* Identificador único de la región.
    - *Nombre de Región:* Nombre de la región o país.
    - *Zona Horaria:* Zona horaria de la región.
    - *Población Objetivo:* Tamaño de la población en esa región.
    - *Población activa:* Porcentaje de la población económicamente activa en la región.
    - *Tasa de Penetración de internet:* Porcentaje de hogares con acceso a internet.
    - *Densidad de población:* Densidad de población de la región.
    - *Índice de competencia:* Nivel de presencia de competidores en la región (como Sony).
    - *Moneda local:* Moneda utilizada en la región.
    - *Idiomas principales:* Idiomas hablados en la región.
    - *Acceso a tiendas físicas:* Número o disponibilidad de tiendas físicas relacionadas con Xbox.
  - *Uso compartido:* También puede emplearse en análisis de inventario y distribución.
  - *Observaciones:* Es una dimensión estática, ya que los datos geográficos no cambian con frecuencia.

==== Esquema del cubo
#align(center)[
  #figure(
    image("images/esquema_ventasjuegosconsolas.svg", width: 100%),
    caption: [Esquema del cubo de ventas de juegos y consolas.]
  )
]

#pagebreak()
=== Jerarquías de las dimensiones
A continuación, se mostrarán las jerarquías enter los atributos de las dimensiones de los cubos anteriores, siempre que exista una. En este caso, solo existe una jerarquía en la dimensión Tiempo:
#align(center)[
  #figure(
    image("images/jerarquia_tiempo.png", width: 100%),
    caption: [Jerarquía de la dimensión Tiempo.]
  )
]

\
== Cálculo de los indicadores
#align(
  center,
  table(
    align: center + horizon,
    columns: (1.5fr, 2fr, 1.25fr, 3fr),
    table.header(
      [Identificador de indicador],
      [Indicador],
      [Proceso de negocio],
      [Descripción del cálculo],
    ),
    [KPI 1],
    [Incrementar un 15% las suscripciones activas de Game Pass cada trimestre.],
    [Suscripción a Game Pass],
    [Filtrar las suscripciones por `estado` activo y agrupar por trimestre. Se cuentan las suscripciones activas en cada trimestre, se le resta el trimestre anterior y se divide el resultado entre las suscripciones activas del trimestre anterior.],

    [KPI 2],
    [Aumentar las ventas de consolas Xbox un 10% en cada temporada de
    lanzamientos importantes.],
    [Ventas de juegos y consolas],
    [Filtrar las ventas por `categoría` consola Xbox y agrupar por `temporada de lanzamiento`. Se cuentan las ventas en cada temporada, se le resta la temporada anterior y se divide el resultado entre las ventas de la temporada anterior.],

    [KPI 3],
    [Incrementar  en  un  20%  las  compras  de  juegos  (venta  individual)  por trimestre.],
    [Ventas de jugos y consolas],
    [Filtrar las ventas por `categoría` juego y agrupar por trimestre. Se cuentan las ventas en cada trimestre, se le resta el trimestre anterior y se divide el resultado entre las ventas del trimestre anterior.],

    [KPI 4],
    [Alcanzar un 80% de retención de suscriptores de Game Pass cada trimestre.],
    [Suscripción a Game Pass],
    [Se filtran los suscriptores activos al final del trimestre. Luego, de estos se filtran los suscriptores activos al inicio del trimestre. Se divide la cantidad de suscriptores activos al inicial y al final entre la cantidad de suscriptores activos solo al final.],

    [KPI 5],
    [Reducir en un 10% el número de cancelaciones de suscripción tras el primer mes cada trimestre.],
    [Suscripción a Game Pass],
    [Agrupamos las suscripciones por trimestre. Restamos a las fechas de cancelación las fechas de alta y filtramos las cancelaciones que ocurrieron en 30 días, teniendo así las cancelaciones tras el primer mes en cada trimestre. Luego, se restan las cancelaciones del trimestre actual menos las cancelaciones del trimestre anterior y se divide todo entre las del trimestre anterior.],

    [KPI 6],
    [Aumentar en un 10% el número de horas jugadas cada trimestre por los suscriptores.],
    [Suscripción a Game Pass],
    [Se agrupan los suscriptores por trimestre, se restan las horas jugadas del trimestre anterior y se suma el total de horas de cada trimestre. Se resta el resultado del trimestre actual menos el trimestre anterior y se divide entre las horas jugadas del trimestre anterior.],

    [KPI 7],
    [Lograr que al menos el 60% de los compradores activen descuentos para comprar juegos cada mes.],
    [Ventas de juegos y consolas],
    [Se filtran los productos vendidos que tengan descuento y que sean juegos. Se agrupan por mes y se cuentan los productos con descuento. Se divide la cantidad de juegos con descuento entre la cantidad total de juegos vendidos en el mes.],

    [KPI 8],
    [Mantener  un  índice  de  satisfacción  superior  a  8/10  en  encuestas  de
    suscriptores cada semestre.],
    [Otros],
    [No se ha modelado el proceso para obtener el indicador con las medidas.],

    [KPI 9],
    [Disminuir en un 15% el número de tickets de soporte relacionados con
    problemas de acceso o rendimiento.],
    [Otros],
    [No se ha modelado el proceso para obtener el indicador con las medidas.],
  ),

)