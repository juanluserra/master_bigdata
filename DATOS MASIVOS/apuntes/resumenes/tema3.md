# Introducción a Apache Spark

- **Apache Spark** es una plataforma de computación en clúster rápida y de propósito general que extiende el modelo MapReduce, soportando queries interactivas, procesamiento streaming y computaciones en memoria.
- Spark puede funcionar en modo batch, interactivo o streaming, reduciendo el número de herramientas a emplear.
- Fue iniciado en 2009 en UC Berkeley RAD Lab y se declaró open source en marzo de 2010.
- Soporta una gran variedad de workloads: batch, queries interactivas, streaming, machine learning y procesamiento de grafos.
- Ofrece APIs en Scala, Java, Python, SQL y R, además de shells interactivos en varios de estos lenguajes.
- Se integra con otras soluciones Big Data como HDFS y Cassandra.
- Spark tiene dos APIs principales: una estructurada o de alto nivel y una de bajo nivel. Se recomienda usar la API estructurada por su mayor rendimiento, mientras que la de bajo nivel ofrece mayor control sobre la distribución de datos.
- SparkSession es el punto de entrada a todas las funcionalidades de Spark, y SparkContext realiza la conexión con el clúster.
- Los Ejecutores ejecutan las tareas individuales y proporcionan almacenamiento en memoria para los datos de las tareas, mientras que el Administrador de Clúster (Cluster Manager) es un componente enchufable en Spark (YARN, Mesos o Spark Standalone).
- Para instalar Spark en Python, se puede usar `pip install pyspark`.

## Operaciones básicas en Spark

- Spark opera con colecciones inmutables y distribuidas de elementos, manipulándolos en paralelo.
- La API estructurada usa DataFrames y DataSets, mientras que la API de bajo nivel usa RDDs (aunque se considera obsoleto).
- Las operaciones sobre estas colecciones incluyen creación, transformaciones (ordenación, filtrado) y acciones para obtener resultados. Spark distribuye los datos y paraleliza las operaciones automáticamente.
- Las filas de un DataFrame son objetos de tipo Row.
- Spark divide los DataFrames en un conjunto de particiones, cuyo número por defecto depende del tamaño del clúster y de los datos.
- Las transformaciones son operaciones que transforman los datos pero no los modifican directamente (inmutabilidad) y se computan de forma "perezosa". Hay transformaciones estrechas (narrow) y anchas (wide).
- Las acciones obtienen un resultado, forzando la ejecución de las transformaciones pendientes y creando un Grafo Dirigido Acíclico (DAG) que Spark optimiza.

## Introducción a los DataFrames

- Un DataFrame puede crearse a partir de una secuencia de datos, objetos tipo Row, RDDs, o leyendo datos de un fichero.
- Spark soporta diferentes filesystems y tipos de ficheros, incluyendo texto plano, CSV, JSON, Parquet, ORC, y también bases de datos relacionales y NoSQL.
- Es preferible especificar el esquema de los DataFrames, definiendo nombres y tipos de datos de las columnas usando StructType y StructField.
- Spark puede leer ficheros CSV infiriendo el esquema automáticamente, pero es mejor definirlo explícitamente. Opciones como `mode`, `sep`, `inferSchema`, `header`, y `nullValue` son configurables.
- Se pueden realizar operaciones como `show()`, `take()`, `collect()`, `foreach()` para mostrar, obtener y aplicar funciones sobre las filas, respectivamente.
- Para seleccionar columnas se usa `select()`, y se puede renombrar columnas con `alias()` o `withColumnRenamed()`, añadir nuevas columnas con `withColumn()` y eliminar columnas con `drop()`.
- Los valores nulos pueden eliminarse con `dropna()` y los duplicados con `dropDuplicates()`. También se pueden reemplazar valores con `fillna()` o `replace()`.
- Los DataFrames pueden guardarse en múltiples formatos, y se crean tantos ficheros como particiones tenga el DataFrame.

## Operaciones con DataFrames

- Se pueden realizar operaciones de filtrado con `filter()`, ordenación con `orderBy()`, y agrupamiento con `groupBy()`. El método `where()` es un alias de `filter()`.
- Se pueden usar funciones de agregación como `avg()`, `count()`, `sum()`, `max()`, y `min()` sobre los grupos. El método `agg` permite hacer varias operaciones de agrupamiento.
- Las funciones `rollup` y `cube` son extensiones del `groupBy` que incluyen filas adicionales con agregados.
- Se pueden realizar joins entre DataFrames, y se pueden usar diferentes tipos de join: `inner`, `outer`, `left`, `right`, `semi`.
- Spark ofrece funciones escalares y agregadas para operar con los DataFrames, incluyendo operaciones matemáticas, de strings, fechas y agregaciones.
- Spark permite trabajar con tipos de datos complejos como structs, arrays y maps.
- Se pueden usar funciones de ventana para operar en grupos de filas, y se pueden usar funciones de agregación y otras funciones adicionales como `cume_dist`, `dense_rank`, `lag`, `lead`.
- Se pueden definir funciones definidas por el usuario (UDFs), pero en Python pueden ser ineficientes debido a la serialización.
- Se puede usar SQL sobre DataFrames registrando el DataFrame como una tabla o vista.

## RDDs

- Los RDDs (Resilient Distributed Datasets) son la colección inmutable y distribuida más básica en Spark, que pueden ser manipulados en paralelo.
- Los RDDs se pueden crear a partir de una colección de datos o desde ficheros utilizando el SparkContext `sc`.
- El número de particiones de un RDD puede especificarse en el momento de crearse.
- Un DataFrame tiene un RDD subyacente al cual se puede acceder con `.rdd`.
- Las transformaciones sobre RDDs incluyen `map()`, `filter()`, `flatMap()`, `distinct()`, `groupBy()`, `union()`, `intersection()`, `subtract()` y `cartesian()`.
- Las acciones sobre RDDs incluyen `reduce()`, `fold()`, `aggregate()`, `count()`, `countApprox()`, `countApproxDistinct()`, `countByValue()`, `collect()`, `take()`, `takeSample()`, `top()` y `takeOrdered()`.
- Los RDDs clave/valor pueden crearse a partir de listas de tuplas, otros RDDs o usando `zip()`.
- Transformaciones específicas para RDDs clave/valor incluyen `reduceByKey()`, `foldByKey()`, `combineByKey()`, `keys()`, `values()`, `sortByKey()`, `mapValues()` y `flatMapValues()`.
- Las acciones específicas incluyen `collectAsMap()`, `countByKey()` y `lookup()`.
- RDDs numéricos pueden usar funciones como `stats()`, `mean()`, `sum()`, `max()`, `min()`, `variance()`, `stdev()` e `histogram()`.
- Los RDDs se pueden guardar como ficheros de texto o Sequence.

## Persistencia y particionado

- La persistencia se usa para evitar recomputar DataFrames y RDDs varias veces, almacenándolos en memoria y/o disco usando `cache()` o `persist()`.
- Los niveles de persistencia incluyen `MEMORY_ONLY`, `MEMORY_AND_DISK`, `DISK_ONLY` y `OFF_HEAP`, con diferentes compensaciones entre espacio, CPU y memoria/disco.
- Si un nodo falla, el DataFrame o RDD se recomputa, aunque se pueden hacer copias adicionales con `_2` o `_3` al nivel de persistencia.
- El algoritmo LRU gestiona la cache.
- El número de particiones es función del tamaño del clúster, pero se puede ajustar en la creación u operación sobre RDDs. En DataFrames se puede modificar una vez creados.
- Las propiedades `spark.default.parallelism` y `spark.sql.shuffle.partitions` son relevantes para RDDs y DataFrames, respectivamente.
- Se pueden usar métodos como `mapPartitions()`, `mapPartitionsWithIndex()` y `foreachPartition()` para operaciones por partición.

## Spark en un clúster

- Para ejecutar Spark en un clúster, se utiliza `spark-submit` con opciones como `master`, `deploy-mode`, `class`, `name`, `jars`, `py-files`, `files`, `executor-memory` y `driver-memory`.
- La configuración se puede especificar en un script o en un fichero de propiedades.
- Se pueden visualizar los logs de la aplicación en la web de YARN o usando `yarn logs -applicationId <application_id>`.

## Spark Streaming

- La abstracción principal de Spark Streaming es el DStream (discretized stream), que representa un flujo continuo de datos.
- Los datos se procesan en micro-batches, agrupando los datos recibidos en intervalos regulares.
- Structured Streaming utiliza la API estructurada (DataFrames, DataSets y SQL), y procesa los datos a medida que llegan al sistema.
- Las fuentes de datos incluyen Apache Kafka, ficheros y sockets, y los destinos pueden ser Apache Kafka, ficheros y memoria.

## Spark MLlib

- Spark MLlib es una librería de algoritmos paralelos de machine learning para datos masivos.
- Incluye algoritmos de clasificación, regresión, clustering y filtrado colaborativo, entre otros, con herramientas para construir, evaluar y ajustar pipelines de ML.
- Hay dos paquetes: `spark.mllib` (basada en RDDs, en mantenimiento) y `spark.ml` (basada en DataFrames, de alto nivel).
- El ejemplo proporcionado muestra cómo usar el algoritmo KMeans para agrupar datos de vectores dispersos.

## Aspectos avanzados

- Una aplicación Spark genera un plan lógico (DAG) y un plan físico que especifica cómo se ejecutará en el cluster.
- Una acción genera un trabajo (Spark job) que se descompone en etapas (stages), que representan grupos de tareas (tasks).
- Las tareas se ejecutan en paralelo en los nodos del clúster, y una etapa termina con una operación de barajado (shuffle).
- Las variables de broadcast permiten enviar variables de solo lectura a los workers de forma eficiente, enviándose solo una vez.
- Los acumuladores permiten agregar valores desde los worker nodes al driver, siendo útiles para contar eventos.