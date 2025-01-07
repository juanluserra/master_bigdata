# Definición y Conceptos de Big Data

- **Big Data** se refiere al estudio y aplicaciones de conjuntos de datos que son tan grandes y complejos que el software de procesamiento de datos tradicional es inadecuado para manejarlos. Esto incluye desafíos como la captura, almacenamiento, análisis, búsqueda, compartición, transferencia, visualización, consulta, actualización, privacidad y origen de los datos.

- **Las 7 Vs del Big Data**: Estas son las características fundamentales que definen Big Data:
    - **Volumen**: La enorme cantidad de datos generados.
    - **Velocidad**: La rapidez con la que se generan y mueven los datos.
    - **Variedad**: La diversidad de tipos de datos, tanto estructurados como no estructurados.
    - **Veracidad**: La necesidad de garantizar que los datos sean correctos y fiables.
    - **Valor**: La capacidad de extraer valor de los datos.
    - **Variabilidad**: El significado de los datos puede variar con el tiempo.
    - **Visualización**: La importancia de presentar los datos de manera comprensible.

- **Fuentes de datos**: Los datos provienen de diversas fuentes como redes sociales, redes de sensores, GPS, datos genómicos, científicos y astronómicos.

- **Retos Tecnológicos**: Incluyen la búsqueda y refinamiento de datos, serialización, sistemas de almacenamiento, servidores y procesamiento. También involucran bases de datos, análisis y Business Intelligence (BI), lenguaje natural, machine learning y deep learning, así como visualización.

# Modelo de Procesamiento MapReduce

- **MapReduce** es un modelo de programación paralelo diseñado para la escalabilidad y tolerancia a fallos en sistemas de hardware de bajo coste.
- Se basa en la combinación de operaciones **Map** y **Reduce**.
- La operación **Map** genera pares clave/valor intermedios. La función Map toma una entrada (K1, V1) y produce una lista de pares intermedios (K2, V2).
- La operación **Reduce** combina los valores intermedios para cada clave particular. La función Reduce toma una clave (K2) y una lista de valores (V2), y produce una lista de valores (V3).
- El proceso está automatizado: Las entradas se dividen, los maps se ejecutan en paralelo y los resultados se mezclan y ordenan antes de ser procesados por los reduces.

## Ejemplos de Uso

- **WordCount**: Cuenta las ocurrencias de cada palabra en ficheros de texto.
- **Sort distribuido**: Ordena pares (id, valor) por id.
- **Índice inverso**: Crea un índice de palabras y los ficheros donde aparecen.

# Características de la Ejecución de MapReduce

- **Sistema de ficheros distribuido**: Se utiliza para gestionar los datos, como GFS (Google File System) o HDFS (Hadoop Distributed File System), donde los ficheros se dividen en bloques grandes y se replican.
- **Arquitectura Master-Worker**: Los map workers procesan splits de datos en el mismo nodo o rack que los datos de entrada. Los reduce workers graban su salida en el sistema distribuido.
- **Número de Maps y Reduces**: Se hacen M tareas map y R tareas reduce, donde M + R es mucho mayor que el número de elementos de procesamiento (PEs) disponibles.
- **Coordinación de las Tareas**: El master coordina las tareas, asignándolas a los workers y gestionando su estado.
- **Tolerancia a Fallos**: El sistema detecta fallos mediante heartbeats y reintenta tareas en otros nodos. Si una tarea falla repetidamente o un nodo completo falla, las tareas se relanzan. También se utiliza la ejecución especulativa para tareas rezagadas.

# Optimizaciones

- **Combinador**: Una función de agregación local para las claves repetidas de cada map, que reduce el tamaño de los datos intermedios. Debe ser conmutativa y asociativa para poder aplicarse.
- **Particionador**: Determina cómo se distribuyen los resultados de los maps a los reduces. El particionador por defecto es un hash de las claves, pero puede personalizarse según las necesidades.

# Implementaciones

- **Hadoop**: La implementación open source más popular de MapReduce.
- **Servicios en la nube**: Amazon Elastic MapReduce, Microsoft Azure HDInsight y Google Cloud Dataproc.

# Conclusiones Clave

- El modelo MapReduce oculta la complejidad de la distribución del trabajo y la tolerancia a fallos.
- Es altamente escalable, maneja fallos de hardware y reduce los costes de hardware, programación y administración.
- No es adecuado para todos los problemas, pero es muy apropiado para la ejecución en la nube.


# Consejos de estudio de Notebooklm
Al estudiar, enfócate en entender cómo se descomponen los problemas en operaciones map y reduce, y cómo el sistema gestiona la distribución del trabajo y la tolerancia a fallos. Los ejemplos prácticos como WordCount, el ordenamiento distribuido y la creación de un índice inverso te ayudarán a comprender mejor el funcionamiento de MapReduce.