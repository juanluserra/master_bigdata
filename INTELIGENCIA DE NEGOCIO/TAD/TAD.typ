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
- *Aumentar los ingresos de Game Pass y Xbox:*  Aumentar las ventas es el objetivo principal de cualquier negocio, por ello, se aumentarán los ingresos de Game Pass y Xbox. Para poder llevar a cabo esta tarea, se monitorizará a fondo las subscripciones activas al servicio, las ventas de las consolas y la compra de los juegos. De esta forma, se podrá estudiar el perfil de los clientes y poder tomar acciones para el correcto desempeño de las ventas de la empresa.
- *Incrementar la fidelización de clientes:* Cualquier empresa de servicio necesita que una base de clientes fieles. Por ello, se monitorizará la retención de los subscriptores, para así poder evaluar sus perfiles y tomar decisiones que intervengan en la fidelización de estos. Con una base de clientes fieles, los beneficios aumentarán.
- *Impulsar la interacción y el uso del Game Pass:* Es necesario ofrecer un producto de calidad para que los clientes se sientan satisfechos y los beneficios aumenten. Por ello, impulsar la interacción de los clientes con el servicie es fundamental, ya que a mayor número de juegos jugados y más cantidad de descuentos utilizados aumentará la visión de calidad del producto. Por ello es necesaria una revisión constante del catálogo de juegos y del catálogo de ofertas.
- *Mejorar la satisfacción del cliente:* Es necesario monitorizar la satisfacción de los clientes. Cuando mayor sea, mejor se hablará del servicio y aparecerán más potenciales compradores. 


== Indicadores principales (KPIs)

+ *Aumentar los ingresos de Game Pass y Xbox:*
  - *KPI 1:* Incrementar un 15% las suscripciones activas de Game Pass cada trimestre.
  - *KPI 2:* Aumentar las ventas de consolas Xbox un 10% en cada temporada de lanzamientos importantes.
  - *KPI 3:* Incrementar en un 20% las compras de juegos (venta individual) por suscriptores.

+ *Incrementar la fidelización de clientes:*
  - *KPI 4:* Alcanzar un 80% de retención de suscriptores mensuales de Game Pass.
  - *KPI 5:* Reducir en un 10% el número de cancelaciones de suscripción tras el primer mes.

+ *Impulsar la interacción y el uso de Game Pass:*
  - *KPI 6:* Aumentar en un 25% el número de juegos jugados por usuario activo cada trimestre.
  - *KPI 7:* Lograr que al menos el 60% de los suscriptores activen descuentos especiales para comprar juegos de Game Pass.

+ *Mejorar la satisfacción del cliente:*
  - *KPI 8:* Mantener un índice de satisfacción superior a 8/10 en encuestas de suscriptores cada semestre.
  - *KPI 9:* Disminuir en un 15% el número de tickets de soporte relacionados con problemas de acceso o rendimiento.

== Resumen de los indicadores
#show table.cell: set par(justify: false)
#show table.cell: set text(size: 10pt)
#show table.cell.where(y: 0): strong
#show table.cell.where(y: 0): set text(size: 11pt)

#align(
  center,
    table(
    align: center + horizon,
    columns: 6,
    table.header(
      [Factor crítico de éxito],
      [Indicador],
      [Id de indicador],
      [Tipo de indicador],
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
    [Incrementar en un 20% las compras de juegos (venta individual) por suscriptores],
    [KPI_3],[Outcome],[Aumento del 20% en compras individuales],[
      Ofrecer descuentos exclusivos en títulos populares para suscriptores \ \
      Promocionar activamente los juegos a través de recomendaciones en la plataforma
    ],

    table.cell(
      rowspan: 2,
      [Incrementar la \ fidelización de clientes]
    ),
    [Alcanzar un 80% de retención de suscriptores mensuales de Game Pass],
    [KPI_4],[Driver],[80% de retención mensual],[
      Mejorar el contenido de bienvenida y tutoriales \ \
      Crear un programa de lealtad para suscriptores antiguos
    ],
    [Reducir en un 10% el número de cancelaciones de suscripción tras el primer mes],
    [KPI_5],[Outcome],[Disminución del 10% en cancelaciones],[
      Implementar encuestas de salida para conocer las causas de cancelación \ \
      Ofrecer una extensión gratuita en caso de duda al cancelar
    ],

    table.cell(
      rowspan: 2,
      [Impulsar la interacción y el uso de Game Pass]
    ),
    [Aumentar en un 25% el número de juegos jugados por usuario activo cada trimestre],
    [KPI_6],[Driver],[Incremento del 25% de juegos jugados],[
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
      mplementar mejoras continuas en base a feedback de usuarios
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
  - *Granularidad:* Nivel de suscriptor individual por día.
  - *Tasa de refresco:* Diaria.
  - *Tipo de tabla de hecho:* Acumulativa (almacena un registro de cada suscripción y su estado actual).
  - *Medidas:* 
    - *Número de suscripciones activas:* Cuenta de suscripciones activas en un día específico. Tipo: Contador.
    - *Número de cancelaciones:* Total de cancelaciones de suscripción en un período dado. Tipo: Contador.
    - *Ingresos por suscripción:* Ingresos generados por las cuotas mensuales de suscriptores activos. Tipo: Suma.
    - *Tasa de retención:* Porcentaje de suscriptores que renuevan su suscripción en cada ciclo mensual. Tipo: Porcentaje (calculado).

\
- *Cubo de Ventas de Juegos y Consolas*
  - *Descripción:* Este proceso abarca las transacciones de venta de juegos (individuales) y consolas Xbox en todos los canales de venta. Es fundamental para medir el éxito de los lanzamientos y el interés continuo en el catálogo de juegos.
  - *Granularidad:* Transacción individual por venta de juego o consola.
  - *Tasa de refresco:* Diaria.
  - *Tipo de tabla de hecho:* Transaccional (registra cada venta individual).
  - *Medidas:*
    - *Número de juegos vendidos:* Cantidad de juegos individuales adquiridos por los usuarios en un día. Tipo: Contador.
    - *Ingresos por ventas de juegos:* Total de ingresos generados por la venta de juegos en un período dado. Tipo: Suma.
    - *Número de consolas vendidas:* Cantidad de consolas Xbox vendidas. Tipo: Contador.
    - *Ingresos por venta de consolas:* Total de ingresos generados por la venta de consolas en un período específico. Tipo: Suma.
    - *Descuentos aplicados:* Total de descuentos utilizados en la compra de juegos y consolas. Tipo: Suma.

\
== Interrelación entre tablas de hechos y dimensiones 

=== Cubo de suscripciones a Game Pass
- *Dimensión Suscriptor*
  - *Descripción:* Esta dimensión almacena información sobre los suscriptores del servicio Game Pass. Es clave para identificar y analizar características demográficas y comportamientos que influyen en la retención y adquisición de clientes.
  - *Atributos:*
    - *ID Suscriptor:* Identificador único para cada suscriptor.
    - *Nombre:* Nombre completo del suscriptor (si aplica).
    - *Edad:* Rango de edad del suscriptor para análisis demográficos.
    - *Ubicación:* Región geográfica donde reside el suscriptor.
    - *Estado de la suscripción:* Si la suscripción está activa, cancelada o en período de prueba.
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
  - *Uso compartido:* Dimensión conformada utilizada también en procesos relacionados con ventas y análisis de interacciones con juegos.
  - *Observaciones:* No es lentamente cambiante, ya que la información temporal es estática y no sufre modificaciones.

- *Dimensión Promoción*
  - *Descripción:* Esta dimensión captura la información de las promociones o descuentos aplicados a las suscripciones de Game Pass, permitiendo evaluar su impacto en la captación y retención de clientes.
  - *Atributos:*
    - *ID Promoción:* Identificador único de la promoción.
    - *Nombre:* Nombre o descripción de la promoción.
    - *Tipo de Promoción:* Clasificación (descuento en cuota, prueba gratuita, paquete de juegos).
    - *Fecha de inicio:* Fecha en la que la promoción comenzó.
    - *Fecha de fin:* Fecha de finalización de la promoción.
  - *Uso compartido:* También se puede usar en el cubo de ventas para analizar promociones conjuntas de suscripciones y juegos.
  - *Observaciones:* No es lentamente cambiante, ya que las promociones tienen una duración fija y predefinida.

- *Dimensión Plataforma de Juego*
  - *Descripción:* Esta dimensión describe las plataformas desde las cuales los suscriptores acceden al servicio Game Pass. Es útil para analizar las preferencias de los usuarios y optimizar el contenido según las plataformas más utilizadas.
  - *Atributos:*
    - *ID Plataforma:* Identificador único de la plataforma.
    - *Nombre:* Nombre de la plataforma (Xbox, PC, móvil).
    - *Tipo de Plataforma:* Clasificación por categoría (consola, escritorio, móvil).
    - *Región de Disponibilidad:* Regiones donde la plataforma está disponible.
  - *Uso compartido:* Esta dimensión puede ser compartida con análisis de ventas de hardware.
  - *Observaciones:* Es una dimensión estática, ya que los datos no cambian frecuentemente.


=== Cubo de Ventas de Juegos y Consolas
- *Dimensión Producto*
  - *Descripción:* Esta dimensión almacena información sobre los juegos y consolas vendidos. Es esencial para identificar tendencias de consumo y analizar qué productos generan mayores ingresos.
  - *Atributos:*
    - *ID Producto:* Identificador único del producto.
    - *Nombre:* Nombre del producto (juego o consola).
    - *Categoría:* Clasificación del producto (juego, consola, accesorio).
    - *Plataforma:* Plataforma compatible (Xbox, PC, multiplataforma).
    - *Fecha de lanzamiento:* Fecha en la que el producto fue lanzado al mercado.
  - *Uso compartido:* También se puede usar en procesos relacionados con análisis de inventario o campañas de marketing.
  - *Observaciones:* Es una dimensión lentamente cambiante, especialmente en atributos como la plataforma o el nombre. Se gestionará utilizando el modelo Slowly Changing Dimension Tipo 2 para registrar los cambios.

- *Dimensión Tiempo*
  - *Descripción:* Representa los aspectos temporales relacionados con las ventas, como la fecha en que se realizaron las transacciones. Permite identificar patrones de consumo y estacionalidades.
  - *Atributos:*
    - *Fecha:* Fecha específica de la venta.
    - *Mes:* Mes en el que ocurrió la venta.
    - *Trimestre:* Trimestre fiscal de la venta.
    - *Año:* Año en el que ocurrió la venta.
    - *Día de la semana:* Indica si la venta ocurrió en un día laborable o festivo.
  - *Uso compartido:* Dimensión conformada utilizada también en el cubo de suscripciones a Game Pass y análisis de campañas promocionales.
  - *Observaciones:* No es lentamente cambiante, ya que la información temporal es estática.

- *Dimensión Canal de Venta*
  - *Descripción:* Almacena información sobre los canales a través de los cuales se realizaron las ventas, como tiendas físicas u online. Es fundamental para evaluar el desempeño de cada canal.
  - *Atributos:*
    - *ID Canal:* Identificador único del canal.
    - *Nombre del Canal:* Nombre específico del canal (Microsoft Store, Best Buy, Amazon, etc.).
    - *Tipo de Canal:* Clasificación del canal (físico, online).
  - *Uso compartido:* También puede utilizarse en análisis de inventario y promociones.
  - *Observaciones:* Es lentamente cambiante, ya que los canales pueden actualizarse o cambiar de nombre. Se usará el modelo Slowly Changing Dimension Tipo 2 para gestionar estos cambios.

- *Dimensión Promoción*
  - *Descripción:* Captura la información relacionada con las promociones o descuentos aplicados en las ventas. Es clave para medir el impacto de las campañas promocionales.
  - *Atributos:*
    - *ID Promoción:* Identificador único de la promoción.
    - *Nombre:* Nombre o descripción de la promoción.
    - *Tipo de Promoción:* Clasificación (descuento, paquete especial).
    - *Fecha de inicio:* Fecha de comienzo de la promoción.
    - *Fecha de fin:* Fecha de finalización de la promoción.
  - *Uso compartido:* Dimensión conformada compartida con el cubo de suscripciones para medir el impacto de promociones combinadas.
  - *Observaciones:* No es lentamente cambiante, ya que las promociones suelen tener una duración fija.

- *Dimensión Región*
  - *Descripción:* Representa la ubicación geográfica donde se realizaron las ventas, permitiendo análisis de tendencias de consumo por región.
  - *Atributos:*
    - *ID Región:* Identificador único de la región.
    - *Nombre de Región:* Nombre de la región o país.
    - *Zona Horaria:* Zona horaria de la región.
    - *Población Objetivo:* Tamaño de la población en esa región.
  - *Uso compartido:* También puede emplearse en análisis de inventario y distribución.
  - *Observaciones:* Es una dimensión estática, ya que los datos geográficos no cambian con frecuencia.



