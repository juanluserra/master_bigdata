# Introducción a Apache Spark

## Introducción a Apache Spark
- Spark es una plataforma de computación en clúster rápida que extiende el modelo MapReduce, soportando queries interactivas y procesamiento streaming.
- Realiza computaciones en memoria, mejorando a MapReduce.
- Es de propósito general con modos de funcionamiento batch, interactivo o streaming.

## Historia de Spark
- Iniciado en 2009 en UC Berkeley RAD Lab (AMPLab).
- Motivado por la ineficiencia de MapReduce para trabajos iterativos e interactivos.
- Declarado open source en marzo de 2010.
- Transferido a la Apache Software Foundation en junio de 2013.

## Características de Spark
- Soporta gran variedad de workloads: batch, queries interactivas, streaming, machine learning, procesado de grafos.
- Ofrece APIs en Scala, Java, Python, SQL y R.
- Se integra con otras soluciones Big Data: HDFS, Cassandra, etc.

## APIs de Spark Core
- Spark ofrece dos APIs: API estructurada (alto nivel) y API de bajo nivel.
- La API estructurada es recomendada por su mayor rendimiento.
- La API de bajo nivel permite mayor control sobre la distribución de los datos.

## Tipos de datos en la API estructurada
- **Datasets**: Colección distribuida de objetos del mismo tipo.
- **DataFrames**: Un DataSet organizado en columnas con nombre. Son conceptualmente equivalentes a una tabla en una base de datos relacional.

## Tipos de datos en la API de bajo nivel
- **RDDs (Resilient Distributed Datasets)**: Lista distribuida de objetos. Son el tipo de datos básico de Spark v1.X.

## Conceptos clave
- **Driver**: Crea un SparkContext, convierte el programa de usuario en tareas, y planifica las tareas en los ejecutores.
- **SparkSession**: Punto de entrada de todas las funcionalidades de Spark. Permite especificar la configuración de la aplicación Spark. Se crea automáticamente en el shell de Spark.
- **SparkContext**: Realiza la conexión con el clúster. Se crea a partir del SparkSession.
- **Executors**: Ejecutan las tareas individuales y devuelven los resultados al Driver.
- **Cluster Manager**: Componente enchufable en Spark (YARN, Mesos o Spark Standalone).

## Instalación de Spark
- Para Scala: Descargar Apache Spark de [http://spark.apache.org/downloads.html](http://spark.apache.org/downloads.html).
- Para Python: Instalar con pip los paquetes necesarios, incluyendo pyspark.

## Ejecución de Spark
- Usando consolas interactivas: `spark-shell` (Scala), `pyspark` (Python).
- Lanzando un script con `spark-submit`.

## Operaciones Básicas en Spark
- Spark trabaja con colecciones inmutables y distribuidas de elementos.
- Las operaciones se dividen en: creación, transformaciones y acciones.
- Spark distribuye automáticamente los datos y paraleliza las operaciones.

## Creación de DataFrames
- Los DataFrames se pueden crear a partir de ficheros, como CSVs.
- Es necesario crear un objeto SparkSession para trabajar con DataFrames.
- Se puede usar el método `read.csv` para leer un archivo CSV y crear un DataFrame, especificando opciones como inferir el esquema y si el archivo tiene cabecera.
- Los DataFrames también se pueden crear a partir de secuencias o listas de datos.
- Las filas de un DataFrame son objetos de tipo Row.
- Se puede especificar el esquema del DataFrame usando `StructType` y `StructField`.

## Transformaciones
- Son operaciones que transforman los datos pero no modifican los datos de origen.
- Se computan de forma "perezosa" (lazyness).
- Ejemplos de transformaciones son `replace()` para reemplazar valores, `sort()` para ordenar los datos, `withColumn()` para añadir columnas y `withColumnRenamed()` para renombrar columnas.
- Se puede usar `select()` para seleccionar columnas.
- El método `cache()` puede ser utilizado para mejorar el rendimiento de un DataFrame transformado.

## Acciones
- Obtienen un resultado, forzando a que se realicen las transformaciones pendientes.
- Al disparar una acción, se crea un Grafo Dirigido Acíclico (DAG) con las transformaciones necesarias.
- Los tipos de acciones incluyen mostrar datos por consola (`show()`), convertir datos Spark en datos del lenguaje (`take()`, `collect()`) y escribir datos a disco (`save()`).
- El método `printSchema()` muestra el esquema del DataFrame, `show()` muestra las filas, y `count()` devuelve el número de filas.
- El método `take(n)` devuelve las primeras n filas del DataFrame como una lista de objetos de tipo Row.

## Particiones
- Spark divide las filas de un DataFrame en un conjunto de particiones.
- Se puede modificar el número de particiones de un DataFrame usando el método `repartition`.

## Guardado de DataFrames
- Los DataFrames se pueden guardar en múltiples formatos como CSV, JSON, Parquet, etc.
- Se crean tantos ficheros como particiones tenga el DataFrame.
- Se puede particionar el guardado por el valor de una columna.