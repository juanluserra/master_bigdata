# Introducción a Apache Spark

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

- Los DataFrames se pueden crear a partir de ficheros, como CSVs o Parquet.
- Es necesario crear un objeto SparkSession para trabajar con DataFrames.
- Se puede usar el método `read.csv` para leer un archivo CSV y crear un DataFrame, especificando opciones como inferir el esquema y si el archivo tiene cabecera. También se puede usar `spark.read.format("parquet").load()` para leer archivos en formato Parquet.
- Los DataFrames también se pueden crear a partir de secuencias o listas de datos.
- Las filas de un DataFrame son objetos de tipo Row.
- Se puede especificar el esquema del DataFrame usando `StructType` y `StructField`.

## Transformaciones

- Son operaciones que transforman los datos pero no modifican los datos de origen (inmutabilidad).
- Se computan de forma "perezosa" (lazyness).
- Ejemplos de transformaciones son `replace()` para reemplazar valores, `sort()` para ordenar los datos, `withColumn()` para añadir columnas y `withColumnRenamed()` para renombrar columnas.
- Se puede usar `select()` para seleccionar columnas.
- También se puede usar `filter()` para seleccionar filas que cumplan una condición.
    - `where()` es un alias de `filter()`.
- El método `cache()` puede ser utilizado para mejorar el rendimiento de un DataFrame transformado.
- El método `orderBy()` permite ordenar el DataFrame.

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

## Operaciones de filtrado

- Se pueden filtrar filas usando `filter()` y condiciones basadas en los valores de las columnas.
- Se puede usar `like()` para buscar patrones en strings.

## Operaciones de ordenación y agrupamiento

- Se puede ordenar un DataFrame usando `orderBy()`.
    - Se puede especificar el orden ascendente o descendente.
- Se pueden realizar agrupaciones usando `groupBy()`.
    - El resultado de `groupBy()` es un objeto de tipo GroupedData.
    - Se pueden realizar operaciones de agregación sobre los grupos, como `count()`, `avg()`, `min()`, `max()`, `sum()`, etc.
    - Se pueden renombrar columnas con `withColumnRenamed()`.
    - El método `agg` permite realizar varias operaciones de agrupamiento en una sola operación.
- Se pueden realizar agrupaciones con `rollup()` y `cube()`.
    - `rollup()` incluye filas adicionales con agregados por la primera columna.
    - `cube()` es similar a `rollup()`, pero recorriendo todas las dimensiones.

## Joins

- Spark permite realizar diferentes tipos de joins: `inner`, `outer`, `left_outer`, `right_outer`, `left_semi`, `left_anti`, `cross`.
    - Un `inner join` devuelve las filas que coinciden en ambos DataFrames.
    - Un `outer join` devuelve todas las filas de ambos DataFrames, incluyendo null cuando no hay coincidencias.
    - Un `left_outer join` devuelve todas las filas del DataFrame de la izquierda y las filas coincidentes del DataFrame de la derecha, poniendo null cuando no hay coincidencia.
    - Un `right_outer join` devuelve todas las filas del DataFrame de la derecha y las filas coincidentes del DataFrame de la izquierda, poniendo null cuando no hay coincidencia.
    - Un `left_semi join` devuelve las filas del DataFrame de la izquierda que existen en el DataFrame de la derecha.
    - Un `left_anti join` devuelve las filas del DataFrame de la izquierda que NO existen en el DataFrame de la derecha.
    - Un `cross join` devuelve el producto cartesiano de ambos DataFrames. Este tipo de join es muy costoso y se debe evitar.

## Funciones escalares y agregadas

- Spark ofrece funciones matemáticas (`abs`, `log`, `hypot`, etc.), funciones de strings (`length`, `concat`, etc.), funciones de fechas (`year`, `date_add`, etc.), y funciones de agregación (`min`, `max`, `count`, `avg`, `sum`, `stddev`, `variance`, etc.).

## Tipos complejos

- Spark permite trabajar con tipos de datos complejos como structs, arrays y maps.
    - `structs` permiten crear DataFrames dentro de DataFrames.
    - `arrays` permiten trabajar con datos como si fueran un array de Python.
        - Se puede usar `split()` para convertir un string en un array.
        - Se puede usar `size()` para obtener el tamaño de un array.
        - Se puede usar `explode()` para convertir cada elemento de un array en una fila.
        - Se puede usar `regexp_replace()` para reemplazar patrones en strings.
    - Se puede usar `getField()` para obtener un campo de un struct.

## Funciones de ventana

- Permiten realizar operaciones sobre grupos de filas, devolviendo un único valor para cada fila.
    - Se pueden usar funciones de agregación como funciones de ventana, pero también funciones adicionales como `cume_dist`, `dense_rank`, `lag`, `lead`, `ntile`, `percent_rank`, `rank`, `row_number`.
    - Se debe usar `Window.partitionBy()` para especificar la partición de las filas y `orderBy()` para especificar el orden.
    - `lag()` permite acceder al valor de una fila anterior.
    - `lead()` permite acceder al valor de una fila posterior.

## Funciones definidas por el usuario (UDFs)

- Permiten crear funciones personalizadas para operar sobre columnas.
    - Las UDFs en Python pueden ser ineficientes debido a la serialización de datos a Python.
    - Se pueden definir UDFs usando la anotación `@udf` o la función `udf()`.

## Uso de sentencias SQL

- Las sentencias SQL ejecutadas desde Spark se traducen a operaciones sobre DataFrames.
- Para poder usar SQL sobre un DataFrame, este debe ser registrado como una tabla o vista.
- Se puede crear una vista temporal o global.
    - Se crea una vista temporal con `createOrReplaceTempView()`.
    - Se puede crear una tabla usando sentencias `CREATE TABLE`.
- Se puede consultar los datos de la tabla usando sentencias SQL `SELECT`, `WHERE`, etc.
- Se pueden eliminar tablas con `DROP TABLE`.
- Se pueden listar las tablas existentes con `SHOW TABLES`.