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

- **RDDs (Resilient Distributed Datasets)**: Lista distribuida de objetos. Son el tipo de datos básico de Spark v1.X. Los RDDs son colecciones inmutables y distribuidas de elementos que pueden ser manipuladas en paralelo. Los RDDs se pueden crear a partir de una colección de datos o desde ficheros.

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

## Creación de RDDs

- Los RDDs se pueden crear a partir de una colección de datos o desde ficheros.
- Se usa el SparkContext (`sc`) para crear RDDs.
- Se puede usar `sc.parallelize()` para crear un RDD a partir de una colección. Los RDDs pueden aceptar listas de tipos diferentes.
- Se puede usar `sc.textFile()` para crear RDDs a partir de ficheros de texto.
- El número de particiones de un RDD se puede especificar en el momento de su creación.

## Transformaciones sobre RDDs

- Las transformaciones generan un nuevo RDD a partir de uno dado, modificando cada uno de los elementos del original.
- `filter(func)`: filtra los elementos de un RDD.
- `map(func)`: aplica una función a los elementos de un RDD.
- `flatMap(func)`: similar a map, pero "aplana" la salida.
- `distinct()`: devuelve un nuevo RDD sin duplicados. El orden de la salida no está definido.
- `groupBy(func)`: devuelve un RDD con los datos agrupados en formato clave/valor, usando una función para obtener la clave.
- `union(rddb)`: devuelve un RDD con la unión de los datos de los dos de partida.
- `intersection(rddb)`: devuelve un RDD con los datos comunes en los dos.
- `subtract(rddb)`: devuelve un RDD con los datos del primero menos los del segundo.
- `cartesian(rddb)`: devuelve el producto cartesiano de ambos RDDs.

## Acciones sobre RDDs

- Las acciones obtienen datos (simples o compuestos) a partir de un RDD.
- `reduce(op)`: combina los elementos de un RDD en paralelo, aplicando un operador. El operador de reducción debe ser un monoide conmutativo.
- `fold(cero, op)`: versión general de reduce, donde se debe proporcionar un valor inicial cero para el operador.
- `aggregate(cero, seqOp, combOp)`: devuelve una colección agregando los elementos del RDD usando dos funciones: seqOp (agregación a nivel de partición) y combOp (agregación entre particiones).
- `count()`: devuelve un entero con el número exacto de elementos del RDD.
- `countApprox(timeout, confidence=0.95)`: versión aproximada de count().
- `countApproxDistinct(relativeSD=0.05)`: devuelve una estimación del número de elementos diferentes del RDD.
- `countByValue()`: devuelve el número de apariciones de cada elemento del RDD como un mapa clave/valor.
- `collect()`: devuelve una lista con todos los elementos del RDD.
- `take(n)`: devuelve los n primeros elementos del RDD.
- `takeSample(withRep, n, [seed])`: devuelve n elementos aleatorios del RDD.
- `top(n)`: devuelve una lista con los primeros n elementos del RDD ordenados en orden descendente.
- `takeOrdered(n,[orden])`: devuelve una lista con los primeros n elementos del RDD en orden ascendente (opuesto a top), o siguiendo el orden indicado en la función opcional.

## RDDs con pares clave/valor

- Los RDDs clave/valor pueden crearse a partir de una lista de tuplas, a partir de otro RDD, o mediante un zip de dos RDDs.

## Transformaciones sobre RDDs clave/valor

- `reduceByKey(func) / foldByKey(func)`: devuelven un RDD, agrupando los valores asociados a la misma clave mediante func.
- `keyBy(f)`: crea tuplas de los elementos del RDD usando f para obtener la clave.
- `zipWithIndex()`: zipea el RDD con los índices de sus elementos.
- `zipWithUniqueId()`: zipea el RDD con identificadores únicos para cada elemento.
- `zip(rdd2)`: zipea dos RDDs.
- `combineByKey(createCombiner(func1), mergeValue(func2), mergeCombiners(func3))`: método general para agregación por clave.
- `keys()`: devuelve un RDD con las claves.
- `values()`: devuelve un RDD con los valores.
- `sortByKey()`: devuelve un RDD clave/valor con las claves ordenadas.
- `mapValues(func)`: devuelve un RDD aplicando una función sobre los valores.
- `flatMapValues(func)`: devuelve un RDD aplicando una función sobre los valores y "aplanando" la salida.
- `join`, `leftOuterJoin`, `rightOuterJoin`, `fullOuterJoin`: realizan inner/outer/full joins entre los dos RDDs.
- `groupByKey()`: agrupa los valores por clave.
- `subtractByKey()`: elimina elementos con una clave presente en otro RDD.
- `cogroup()`: agrupa los datos que comparten la misma clave en ambos RDDs.

## Acciones sobre RDDs clave/valor

- `collectAsMap()`: obtiene el RDD en forma de mapa.
- `countByKey()`: devuelve un mapa indicando el número de ocurrencias de cada clave.
- `lookup(key)`: devuelve una lista con los valores asociados con una clave.

## RDDs numéricos

- Spark implementa funciones de estadística descriptiva como `stats()`, `mean()`, `sum()`, `max()`, `min()`, `variance()`, `sampleVariance()`, `stdev()`, `sampleStdev()`, y `histogram()`.

## Guardado de RDDs

- Los RDDs se pueden salvar a disco como ficheros de texto, ficheros Sequence, y otros tipos de ficheros que pueda escribir Hadoop.
- `saveAsTextFile()`: salva el RDD como fichero de texto.
- `saveAsSequenceFile()`: salva el RDD clave/valor como fichero Sequence.
- `sequenceFile()`: recupera un RDD a partir de un fichero Sequence.