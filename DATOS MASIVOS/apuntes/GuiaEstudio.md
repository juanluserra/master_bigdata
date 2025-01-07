# Guía de Estudio de Apache Spark y Hadoop

## Cuestionario

### ¿Qué hace la función `printSchema()` en Spark y por qué es útil?
La función `printSchema()` muestra la estructura del DataFrame, incluyendo los nombres y tipos de datos de las columnas. Esto es útil para entender la organización de los datos y verificar que los tipos de datos se han inferido o definido correctamente.

### ¿Qué son las particiones en Spark y cómo influyen en el rendimiento?
Las particiones dividen los datos de un RDD o DataFrame en fragmentos más pequeños. Esto permite que las operaciones se realicen en paralelo, mejorando el rendimiento al distribuir el trabajo entre los nodos de un clúster.

### Describe cómo se crea un `SparkSession` y qué configuración se puede especificar.
Un `SparkSession` se crea usando `SparkSession.builder`. Se puede configurar el nombre de la aplicación, la compresión de RDDs, la memoria del driver y de los ejecutores, y el master de Spark (local o YARN).

### ¿Qué hace la función `withColumn()` en Spark y cómo se puede usar para crear nuevas columnas?
`withColumn()` añade o reemplaza una columna en un DataFrame. Se usa proporcionando un nombre para la nueva columna y una expresión, que puede ser una operación sobre columnas existentes.

### Explica el propósito de usar `sample()` y `limit()` en Spark y cómo se diferencian.
`sample()` devuelve una fracción aleatoria de las filas de un DataFrame, mientras que `limit()` devuelve un número específico de filas. `sample()` se usa para obtener un subconjunto de datos para pruebas o análisis, y `limit()` para tomar un número reducido de filas para visualización o procesamiento.

### ¿Qué son las funciones escalares y agregadas en Spark y da algunos ejemplos?
- **Funciones escalares:** Operan sobre cada valor individual de una columna (e.g., `abs`, `log`, `concat`).
- **Funciones agregadas:** Operan sobre un grupo de valores para producir un resultado único (e.g., `min`, `max`, `count`, `avg`).

### Describe los tres tipos de datos complejos que se pueden manejar en Spark: structs, arrays, y maps.
- **Structs:** Permiten crear DataFrames dentro de DataFrames.
- **Arrays:** Manejan colecciones de elementos como si fueran arrays de Python.
- **Maps:** Almacenan pares clave-valor en cada fila.

### ¿Cuál es la diferencia entre las funciones de ventana y las funciones de agregación en Spark?
- **Funciones de agregación:** Operan sobre grupos de filas para producir un valor único.
- **Funciones de ventana:** Operan sobre grupos de filas (frames) devolviendo un único valor por cada fila, permitiendo el cálculo de valores como medias móviles o sumas acumuladas.

### Explica qué son las UDFs (User Defined Functions) en Spark y cómo se pueden usar.
Las UDFs son funciones definidas por el usuario que pueden operar sobre columnas de un DataFrame, cuando las funciones predefinidas de Spark no cumplen con los requisitos. Se crean con `@udf` o `udf()` y pueden ser aplicadas a los datos.

### ¿Qué son los RDDs en Spark y cómo se diferencian de los DataFrames?
- **RDDs (Resilient Distributed Datasets):** Son la base de Spark, colecciones de datos distribuidas que permiten el procesamiento paralelo.
- **DataFrames:** Son una abstracción de nivel superior, que ofrece una estructura tabular con esquema y optimizaciones sobre los RDDs.

---

## Clave de Respuestas del Cuestionario

1. La función `printSchema()` muestra la estructura del DataFrame, incluyendo nombres y tipos de datos. Es útil para entender la organización y verificar los tipos de datos.
2. Las particiones dividen los datos para procesamiento paralelo en Spark, mejorando el rendimiento al distribuir el trabajo.
3. Un `SparkSession` se crea con `SparkSession.builder`, configurando nombre, compresión, memoria, y master.
4. `withColumn()` añade o reemplaza columnas en un DataFrame, usando un nombre y una expresión.
5. `sample()` toma una fracción aleatoria de filas, `limit()` un número específico; se usan para pruebas y visualización.
6. Las funciones escalares operan en cada valor (ej. `abs`, `concat`); las agregadas en grupos (ej. `min`, `count`).
7. **Structs:** DataFrames dentro de DataFrames, **Arrays:** como arrays de Python, **Maps:** son pares clave-valor.
8. Las funciones de agregación dan un valor por grupo, las de ventana un valor por fila dentro de un grupo.
9. Las UDFs son funciones personalizadas que Spark aplica a las columnas, usando `@udf` o `udf()`.
10. Los RDDs son la base de Spark para procesamiento paralelo, los DataFrames son una abstracción más alta con estructura tabular.

---

## Preguntas para Ensayo

1. Compara y contrasta el procesamiento de datos con RDDs y DataFrames en Spark. Incluye ejemplos de cuándo uno puede ser preferible al otro, teniendo en cuenta el rendimiento y la facilidad de uso.
2. Explica en detalle el concepto de particionamiento en Spark, tanto para RDDs como para DataFrames, y describe cómo influye en el rendimiento de las aplicaciones.
3. Describe los diferentes tipos de joins disponibles en Spark (inner, outer, left, right, semi) y proporciona escenarios en los que cada uno sería la mejor opción.
4. Analiza el uso de UDFs en Spark, discutiendo sus ventajas y desventajas, y ofrece ejemplos de situaciones en las que sería beneficioso utilizarlas.
5. Describe la arquitectura de un clúster Hadoop y cómo se relaciona con el procesamiento de datos con Spark. Explica los componentes clave como HDFS y YARN, y cómo trabajan juntos para ejecutar aplicaciones Spark.

---

## Glosario

- **SparkSession:** Punto de entrada a la funcionalidad de Spark; se utiliza para crear DataFrames y operar con ellos.
- **DataFrame:** Estructura de datos similar a una tabla, con filas y columnas, que se utiliza para el procesamiento de datos en Spark.
- **RDD (Resilient Distributed Dataset):** Colección de datos distribuida, la base de Spark, que permite operaciones paralelas en un clúster.
- **Partición:** División de los datos en un RDD o DataFrame en fragmentos más pequeños para procesamiento paralelo.
- **Transformación:** Operación en un RDD o DataFrame que crea un nuevo RDD o DataFrame, como `map`, `filter`, `withColumn`.
- **Acción:** Operación en un RDD o DataFrame que devuelve un resultado o lo escribe en un almacenamiento, como `count`, `show`, `collect`.
- **Schema:** Estructura de un DataFrame que define los nombres y tipos de datos de las columnas.
- **UDF (User Defined Function):** Función personalizada que puede ser definida por el usuario y aplicada a los datos en un DataFrame.
- **Join:** Operación para combinar dos DataFrames basándose en una condición común.
- **HDFS (Hadoop Distributed File System):** Sistema de archivos distribuido diseñado para almacenar grandes conjuntos de datos en un clúster de computadoras.
- **YARN (Yet Another Resource Negotiator):** Framework para la gestión de recursos en un clúster Hadoop.
- **Master:** Proceso que coordina las tareas y gestiona los recursos en Spark (puede ser local o en un clúster).
- **Executor:** Proceso que ejecuta las tareas en los nodos worker de un clúster de Spark.
- **Driver:** Proceso que contiene el programa Spark y coordina la ejecución en el clúster.
- **Broadcast Variable:** Variable que se envía a todos los ejecutores para evitar enviarla con cada tarea.
- **Accumulator:** Variable que permite a los ejecutores actualizar de forma paralela un valor que se enviará al driver al final de la ejecución.
- **Lineage Graph (DAG):** Grafo que representa la serie de transformaciones en un programa Spark.
- **Stage:** Grupo de tareas que se ejecutan en un trabajo Spark y se ejecutan en paralelo.
- **Task:** Unidad de trabajo que se ejecuta en un ejecutor y forma parte de una etapa.
- **groupBy:** Operación que agrupa las filas de un DataFrame según los valores de una o más columnas.
- **window:** Función para realizar cálculos sobre un marco de filas relacionado a la fila actual, útil para series temporales.
- **coalesce:** Operación que reduce el número de particiones en un RDD o DataFrame.
- **repartition:** Operación que incrementa o reduce el número de particiones en un RDD o DataFrame.
- **foreachPartition:** Permite ejecutar una función en cada partición de un RDD; útil para interactuar con sistemas de archivos locales.
- **map:** Transformación que aplica una función a cada elemento de un RDD.
- **reduce:** Acción que combina los elementos de un RDD usando una función de forma conmutativa y asociativa.
- **fold:** Similar a `reduce` pero con un valor inicial que se aplica a todas las particiones.
- **groupBy:** Transformación que agrupa los elementos de un RDD o DataFrame según una función.
- **distinct:** Transformación que devuelve un RDD o DataFrame sin valores duplicados.
- **sample:** Transformación que genera un nuevo RDD o DataFrame con una fracción aleatoria de los datos.
- **filter:** Transformación que filtra los datos del RDD o DataFrame según una condición.
- **reduceByKey:** Operación que combina los valores de un RDD clave/valor usando una función asociativa y conmutativa por cada clave.
- **countByValue:** Acción que devuelve un diccionario con el número de ocurrencias de cada valor en un RDD.
- **textFile:** Función para crear un RDD a partir de un fichero de texto.
- **keyBy:** Transformación para asignar una clave a cada elemento del RDD.
- **cache:** Función que almacena un RDD o DataFrame en memoria para acelerar el procesamiento.
- **persist:** Función para definir el nivel de almacenamiento de un RDD o DataFrame (memoria, disco).
- **StructType, StructField, IntegerType, StringType, etc.:** Tipos de datos y estructuras de datos para definir el esquema de un DataFrame.
- **explode:** Función que convierte una lista de un campo en filas.
- **regexp_replace:** Función que aplica una expresión regular a los datos para realizar reemplazos.
- **udf:** Decorador o función para definir funciones definidas por el usuario para procesar datos.
- **lag:** Función de ventana que permite obtener el valor anterior de una columna en una ventana.
- **lead:** Función de ventana que permite obtener el valor posterior de una columna en una ventana.
- **Struct:** Función para generar un tipo struct a partir de varias columnas, agrupándolas.
- **getField:** Función para obtener el valor de un campo de una columna struct.
- **split:** Función para dividir un string en una lista de substrings.
- **size:** Función que devuelve el tamaño de una lista o array.
- **Window:** Objeto para definir cómo se particionan y ordenan los datos para el uso de funciones de ventana.
- **WindowSpec:** Especificación de la ventana creada a partir de la clase `Window`.
- **over:** Función que especifica la ventana sobre la cual se va a aplicar una función de ventana.
- **MapReduce:** Modelo de programación para procesar grandes cantidades de datos en paralelo.
- **Map:** Fase de un programa MapReduce donde los datos son procesados por una función `map` para crear pares clave/valor intermedios.
- **Reduce:** Fase de un programa MapReduce donde los valores con las mismas claves son agrupados y procesados por una función `reduce` para crear una salida final.
- **Streaming:** Modelo de procesamiento de datos continuos, que se usan como datos de entrada.
- **MLlib:** Librería de aprendizaje automático de Apache Spark.
- **Sparse Vector:** Vector disperso, utilizado por MLlib para representar datos con muchos valores cero, de forma más eficiente.
- **Clustering:** Tarea de aprendizaje automático no supervisado que agrupa elementos similares.
- **Catalyst:** Optimizador del plan lógico de Spark.
- **Job:** Trabajo de Spark, resultado de una acción en un RDD o DataFrame.
- **explain:** Método que muestra el plan lógico y físico de un DataFrame.
- **toDebugString:** Método que muestra el plan lógico y físico de un RDD.
- **hdfs dfs:** Comando de línea de comandos para interactuar con el sistema de archivos distribuido HDFS.
- **hdfs dfsadmin:** Comando para ejecutar operaciones de administración de HDFS.
- **spark-submit:** Comando para ejecutar una aplicación Spark en un clúster.
- **mrjob:** Librería de Python para la creación de programas MapReduce en Python.
- **pyarrow:** Librería de Python para el acceso a sistemas de ficheros como HDFS.
- **copyFromLocal:** Comando de HDFS para copiar archivos desde el sistema de archivos local a HDFS.
- **copyToLocal:** Comando de HDFS para copiar archivos desde HDFS al sistema de archivos local.
- **moveToLocal:** Comando de HDFS para mover archivos desde HDFS al sistema de archivos local.
- **getFileStatus:** Método de la API de HDFS para obtener la información de un archivo.
- **listStatus:** Método de la API de HDFS para obtener la información de los archivos de un directorio.
- **mkdirs:** Método de la API de HDFS para crear un directorio.
- **delete:** Método de la API de HDFS para eliminar un archivo o directorio.
- **open_input_stream:** Método de la API de pyarrow para obtener un stream de lectura de un archivo en HDFS.
- **copyfileobj:** Método de la API de shutil para la copia de un stream a otro.
- **FileSelector:** Objeto de pyarrow que se utiliza para seleccionar uno o más archivos en un sistema de ficheros.
- **FileInfo:** Objeto de pyarrow que representa la información de un archivo en un sistema de ficheros.
