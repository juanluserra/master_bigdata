# Ejemplos de Spark

## 1. Creación de un SparkSession y SparkContext

Este código es fundamental para iniciar cualquier aplicación Spark. El SparkSession es el punto de entrada para todas las funcionalidades de Spark, permitiendo configurar la aplicación. El SparkContext realiza la conexión con el cluster y es el punto de entrada para la API de bajo nivel.

```python
from pyspark.sql import SparkSession
import os

# Elegir el máster de Spark dependiendo de si se ha definido la variable de entorno HADOOP_CONF_DIR o YARN_CONF_DIR
SPARK_MASTER: str = 'yarn' if 'HADOOP_CONF_DIR' in os.environ or 'YARN_CONF_DIR' in os.environ else 'local[*]'

# Creamos un objeto SparkSession (o lo obtenemos si ya está creado)
spark: SparkSession = SparkSession \
    .builder \
    .appName("Mi aplicacion") \
    .config("spark.rdd.compress", "true") \
    .config("spark.executor.memory", "3g") \
    .config("spark.driver.memory", "3g") \
    .master(SPARK_MASTER) \
    .getOrCreate()

sc = spark.sparkContext

print(f"Usando Spark Master en {SPARK_MASTER}")
```

Este código crea o recupera una SparkSession, configurando la aplicación y estableciendo la conexión con el cluster. Se utiliza una variable de entorno para determinar si se usa un cluster YARN o un entorno local.

## 2. Creación de un DataFrame a partir de un fichero CSV

Este ejemplo muestra cómo leer un fichero CSV y crear un DataFrame, que es la estructura de datos principal en la API estructurada de Spark.

```python
from pyspark.sql.dataframe import DataFrame

datosVuelos2015: DataFrame = (spark
                .read
                .option("inferSchema", "true")
                .option("header", "true")
                .csv("2015-summary.csv"))
```

Aquí, Spark infiere el esquema de los datos automáticamente, aunque es preferible especificar el esquema explícitamente. Se indica que la primera línea del CSV es la cabecera.

## 3. Mostrar y contar filas de un DataFrame

Estas operaciones básicas permiten visualizar los datos y obtener información sobre el tamaño del DataFrame.

```python
datosVuelos2015.printSchema()
datosVuelos2015.show()
print(datosVuelos2015.count())
```

`printSchema()` muestra el esquema del DataFrame, `show()` muestra las primeras filas, y `count()` devuelve el número total de filas.

## 4. Selección y renombrado de columnas

Este código muestra cómo seleccionar columnas específicas de un DataFrame y cómo renombrar una columna.

```python
from pyspark.sql.functions import col, lit

dfSE = dfSE.withColumnRenamed("CreationDate", "Fecha_de_creación")
dfSE.select("Fecha_de_creación",
            dfSE.ViewCount.alias("Número_de_vistas"),
            "Score",
            "PostTypeId")\
            .show(truncate=False)
```

`withColumnRenamed` se usa para renombrar la columna "CreationDate" a "Fecha_de_creación". `select` se utiliza para seleccionar las columnas deseadas y `alias` para renombrar la columna "ViewCount".

## 5. Adición de una nueva columna

Este ejemplo muestra cómo añadir una nueva columna con un valor constante.

```python
dfSE = dfSE.withColumn("unos", lit(1))
dfSE.show(5)
```

`withColumn` añade una nueva columna llamada "unos" con todos los valores iguales a 1. La función `lit()` convierte un literal de Python al formato interno de Spark.

## 6. Eliminación de columnas

Este código muestra cómo eliminar una columna de un DataFrame.

```python
dfSE = dfSE.drop(col("unos"))
dfSE.columns
```

`drop` elimina la columna "unos" del DataFrame.

## 7. Funciones de agregación

Este código muestra cómo calcular la media y el máximo de una columna de un DataFrame.

```python
import pyspark.sql.functions as F

dfSE.select(F.avg(colPuntos), F.max(colPuntos), F.count(colPuntos)).show()
dfSE.select(colPuntos).describe().show()
```

F.avg(), F.max() y F.count() se utilizan para calcular la media, el máximo y el número total de valores de una columna respectivamente.

## 8. Funciones de ventana

Este ejemplo muestra cómo usar funciones de ventana para calcular valores basados en grupos de filas.

```python
from pyspark.sql import Window
from pyspark.sql.functions import lag, lead

ventana = Window.partitionBy(colUserId).orderBy(fechaCreacionCol)
colAnterior = lag(fechaCreacionCol, 1).over(ventana)
colPosterior = lead(fechaCreacionCol, 1).over(ventana)
```

`Window.partitionBy` define la ventana por usuario, y `orderBy` ordena por fecha de creación. `lag()` y `lead()` se utilizan para obtener los valores de la fila anterior y siguiente respectivamente. Las funciones de ventana permiten operar en grupos de filas, devolviendo un único valor para cada fila.

## 9. Creación de un RDD a partir de una lista

Este ejemplo muestra cómo crear un RDD a partir de una lista de Python. Los RDDs son las estructuras básicas de datos de Spark versión 1.x, aunque se recomienda el uso de DataFrames.

```python
from pyspark import RDD

rdd1: RDD[int] = sc.parallelize([1, 23, 25-30])
print(rdd1.collect())
```

`sc.parallelize()` crea un RDD a partir de una colección de datos.

## 10. Operaciones sobre RDDs

Este código muestra transformaciones sobre RDDs.

```python
squared_rdd: RDD[tuple[int, int]] = (rdd1
                                    .filter(lambda x: x < 6)
                                    .map(lambda x: (x, x*x)))

assert squared_rdd.collect() == [(1, 1), (2, 4), (3, 9), (4, 16), (5, 25)]

filtered_rdd: RDD[int] = rdd1.filter(lambda x: x < 6)

def add1(x:int)->tuple[int,int]:
    return (x+1, (x+1) * (x+1))

squaredflat_rdd: RDD[int] = (filtered_rdd
                                            .map(add1)
                                            .flatMap(lambda x: (x, x*x))) # Da la salida en forma de lista
```

`filter` filtra los elementos del RDD que cumplen una condición, `map` transforma cada elemento del RDD usando una función y `flatMap` transforma y aplana los elementos del RDD.

## 11. Persistencia de un RDD

Este ejemplo muestra cómo guardar un RDD en memoria o disco para evitar su recálculo en operaciones posteriores.

```python
rdd1.persist()
```

`persist()` almacena el RDD en memoria o disco, dependiendo de la configuración.

## 12. Ejecución de un script de Spark con spark-submit

Este código muestra cómo ejecutar un script Python de Spark en un clúster.

```bash
spark-submit --master local[30] /tmp/miscript.py
```

`spark-submit` lanza la aplicación en el clúster, y el parámetro `--master` indica el cluster manager a utilizar, en este caso un entorno local con 8 cores.

Estos ejemplos ilustran algunas de las operaciones más comunes en Spark, desde la creación de DataFrames y RDDs hasta la manipulación y el análisis de los datos. Recuerda que la API estructurada (DataFrames) es más eficiente y de alto nivel que la API de bajo nivel (RDDs), por lo que se recomienda su uso. También es importante tener en cuenta el concepto de "acciones", que son las que fuerzan la ejecución de las transformaciones.