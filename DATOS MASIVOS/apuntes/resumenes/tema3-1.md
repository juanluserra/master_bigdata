# Introducción a Apache Spark

- **Spark** es una plataforma de computación en clúster rápida que extiende el modelo MapReduce.
- Soporta de manera eficiente otros tipos de computación como queries interactivas y procesamiento streaming.
- Realiza computaciones en memoria, mejorando a MapReduce para aplicaciones complejas (10-20x más rápido).
- Es de propósito general con modos de funcionamiento batch, interactivo o streaming.
- Reduce el número de herramientas a emplear y mantener.

## Historia de Spark

- Iniciado en 2009 en UC Berkeley RAD Lab (AMPLab).
- Motivado por la ineficiencia de MapReduce para trabajos iterativos e interactivos.
- Declarado open source en marzo de 2010.
- Transferido a la Apache Software Foundation en junio de 2013, TLP en febrero de 2014.
- Uno de los proyectos Big Data más activos.
- La versión 1.0 fue lanzada en mayo de 2014.

## Características de Spark

- Soporta gran variedad de workloads: batch, queries interactivas, streaming, machine learning, procesado de grafos.
- Ofrece APIs en Scala, Java, Python, SQL y R.
- Proporciona shells interactivos en Scala, Python, SQL y R.
- Se integra con otras soluciones Big Data: HDFS, Cassandra, etc.

## APIs de Spark Core

- Spark ofrece dos APIs: API estructurada (alto nivel) y API de bajo nivel.
- La API estructurada es recomendada por su mayor rendimiento.
- La API de bajo nivel permite mayor control sobre la distribución de los datos.
- La API de alto nivel utiliza las primitivas de bajo nivel.

## Tipos de datos en la API estructurada

- **Datasets**: Colección distribuida de objetos del mismo tipo. Introducida en Spark > 1.6. El API para Datasets solo está disponible en Scala y Java.
- **DataFrames**: Un DataSet organizado en columnas con nombre. Es conceptualmente equivalente a una tabla en una base de datos relacional o un dataframe en Python Pandas o R. El API para DataFrames está disponible en Scala, Java, Python y R.

## Tipos de datos en la API de bajo nivel

- **RDDs (Resilient Distributed Datasets)**: Lista distribuida de objetos. Son el tipo de datos básico de Spark v1.X.

## Conceptos clave

- **Driver**: Crea un SparkContext, convierte el programa de usuario en tareas (DAG de operaciones lógico -> plan de ejecución físico), y planifica las tareas en los ejecutores.
- **SparkSession**: Punto de entrada de todas las funcionalidades de Spark. Permite especificar la configuración de la aplicación Spark. Se crea automáticamente en el shell de Spark, y en el notebook se puede crear automáticamente, aunque también se puede crear manualmente.
- **SparkContext**: Realiza la conexión con el clúster. Se crea a partir del SparkSession. Punto de entrada para la API de bajo nivel. Se define automáticamente en el notebook o shell de Spark.
- **Executors**: Ejecutan las tareas individuales y devuelven los resultados al Driver. Proporcionan almacenamiento en memoria para los datos de las tareas.
- **Cluster Manager**: Componente enchufable en Spark (YARN, Mesos o Spark Standalone).

## Instalación de Spark

- **Para Scala**: Descargar Apache Spark de [http://spark.apache.org/downloads.html](http://spark.apache.org/downloads.html). Se puede descargar una versión preconstruida para Hadoop 3.x o posterior, o una versión sin Hadoop.
- **Para Python**: Instalar con pip los paquetes necesarios, incluyendo `pyspark`, `jupyter`, `ipython`. Añadir las carpetas de las instalaciones al PATH. Si se va a ejecutar Spark en el clúster, hay que hacer que pueda encontrar la instalación de Hadoop.

## Ejecución de Spark

- Usando consolas interactivas: `spark-shell` (Scala), `pyspark` (Python), `PYSPARK_DRIVER_PYTHON=ipython pyspark` (Python con IPython), `PYSPARK_DRIVER_PYTHON=jupyter PYSPARK_DRIVER_PYTHON_OPTS="notebook" pyspark` (Python con Jupyter), `sparkR` (R), `spark-sql` (SQL). También se puede usar Apache Zeppelin.
- Lanzando un script con `spark-submit`.

## Documentación

- La documentación oficial de Apache Spark está en [https://spark.apache.org/docs/latest/](https://spark.apache.org/docs/latest/).
- La documentación de las APIs para los distintos lenguajes se encuentra en las siguientes URLs:
    - **Python**: [https://spark.apache.org/docs/latest/api/python/](https://spark.apache.org/docs/latest/api/python/)
    - **Scala**: [https://spark.apache.org/docs/latest/api/scala/](https://spark.apache.org/docs/latest/api/scala/)
    - **Java**: [https://spark.apache.org/docs/latest/api/java/](https://spark.apache.org/docs/latest/api/java/)

## Ejemplo de creación de SparkSession en Python

El código de ejemplo dado crea una SparkSession utilizando el método `builder` con opciones de configuración, establece el master a `local`, y obtiene o crea la sesión. Luego obtiene el SparkContext desde la sesión y muestra la versión de PySpark.