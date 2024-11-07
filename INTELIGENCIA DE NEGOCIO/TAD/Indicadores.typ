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

