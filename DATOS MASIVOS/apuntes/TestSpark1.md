# Examen Tipo Test: Apache Spark

### Pregunta 1:  
¿Cuál de las siguientes opciones es la forma correcta de crear un SparkSession en PySpark, configurando la compresión RDD y la memoria del driver?  
a) ` spark = SparkSession.builder.appName("test").getOrCreate()`  
b) ` spark = SparkSession.builder \ .config("spark.rdd.compress", "true") \ .config("spark.driver.memory", "3g") \ .getOrCreate()`  
c) ` spark = SparkSession.builder \ .appName("test") \ .config("spark.rdd.compress", True) \ .config("spark.driver.memory", 3000) \ .getOrCreate()`  
d) ` spark = SparkSession.newSession()`  

<details>
  <summary>Ver respuesta</summary>
  b - ` spark = SparkSession.builder \ .config("spark.rdd.compress", "true") \ .config("spark.driver.memory", "3g") \ .getOrCreate()`
</details>

---

### Pregunta 2:  
¿Cómo se puede especificar que un DataFrame debe leer un archivo CSV, inferir el esquema y usar la primera fila como cabecera?  
a) ` df = spark.read.csv("file.csv", inferSchema=True, header=True)`  
b) ` df = spark.read.format("csv").option("inferSchema", True).option("header", True).load("file.csv")`  
c) ` df = spark.read.option("inferSchema", "true").option("header", "true").csv("file.csv")`  
d) ` df = spark.read.csv("file.csv", schema="infer", header=1)`  

<details>
  <summary>Ver respuesta</summary>
  c - ` df = spark.read.option("inferSchema", "true").option("header", "true").csv("file.csv")`
</details>

---

### Pregunta 3:  
¿Cuál de las siguientes líneas de código muestra cómo renombrar la columna "CreationDate" a "Fecha_de_creación" en un DataFrame llamado dfSE?  
a) ` dfSE.rename("CreationDate", "Fecha_de_creación")`  
b) ` dfSE.withColumnRenamed("CreationDate", "Fecha_de_creación")`  
c) ` dfSE.changeColumn("CreationDate", "Fecha_de_creación")`  
d) ` dfSE = dfSE.withColumn("Fecha_de_creación", dfSE.CreationDate)`  

<details>
  <summary>Ver respuesta</summary>
  b - ` dfSE.withColumnRenamed("CreationDate", "Fecha_de_creación")`
</details>

---

### Pregunta 4:  
¿Cómo se filtran las filas de un DataFrame llamado dfSE donde la columna "Body" contiene la palabra 'Italiano'?  
a) ` dfConItaliano = dfSE.filter(dfSE.Body.contains("Italiano"))`  
b) ` dfConItaliano = dfSE.where(col("Body") == "Italiano")`  
c) ` dfConItaliano = dfSE.filter(col("Body").like("%Italiano%"))`  
d) ` dfConItaliano = dfSE.select("*").where(dfSE["Body"].like("Italiano"))`  

<details>
  <summary>Ver respuesta</summary>
  c - ` dfConItaliano = dfSE.filter(col("Body").like("%Italiano%"))`
</details>

---

### Pregunta 5:  
¿Cuál de las siguientes opciones muestra cómo obtener el número de particiones de un DataFrame llamado datosVuelos2015?  
a) ` datosVuelos2015.numPartitions()`  
b) ` datosVuelos2015.rdd.getNumPartitions()`  
c) ` datosVuelos2015.getPartitions()`  
d) ` datosVuelos2015.countPartitions()`  

<details>
  <summary>Ver respuesta</summary>
  b - ` datosVuelos2015.rdd.getNumPartitions()`
</details>

---

### Pregunta 6:  
¿Cómo se crea un RDD a partir de una lista en PySpark?  
a) ` rdd = sc.makeRDD()`  
b) ` rdd = sc.parallelize()`  
c) ` rdd = SparkContext.parallelize()`  
d) ` rdd = sc.createRDD()`  

<details>
  <summary>Ver respuesta</summary>
  b - ` rdd = sc.parallelize()`
</details>

---

### Pregunta 7:  
¿Qué hace la función flatMap en RDDs?  
a) Aplica una función a cada elemento y devuelve una lista aplanada de resultados.  
b) Aplica una función a cada elemento y devuelve una lista de resultados.  
c) Filtra elementos de un RDD basado en una función.  
d) Combina elementos de un RDD en un único valor.  

<details>
  <summary>Ver respuesta</summary>
  a - Aplica una función a cada elemento y devuelve una lista aplanada de resultados.
</details>

---

### Pregunta 8:  
¿Cuál es la función que se utiliza para guardar un DataFrame en formato Parquet con compresión gzip?  
a) ` df.save("path", format="parquet", compression="gzip")`  
b) ` df.write.parquet("path", compression="gzip")`  
c) ` df.write.format("parquet").option("compression", "gzip").save("path")`  
d) ` df.write.save("path", format="parquet", compress="gzip")`  

<details>
  <summary>Ver respuesta</summary>
  c - ` df.write.format("parquet").option("compression", "gzip").save("path")`
</details>

---

### Pregunta 9:  
¿Cómo se realiza un join de tipo inner entre dos DataFrames dfPreguntas y dfRespuestas usando la columna ID Resp Aceptada de dfPreguntas y la columna ID Respuesta de dfRespuestas?  
a) ` dfPreguntas.join(dfRespuestas, dfPreguntas.ID Resp Aceptada == dfRespuestas.ID Respuesta)`  
b) ` dfPreguntas.join(dfRespuestas, "ID Resp Aceptada" == "ID Respuesta", "inner")`  
c) ` dfPreguntas.join(dfRespuestas, dfPreguntas["ID Resp Aceptada"] == dfRespuestas["ID Respuesta"], "inner")`  
d) ` dfPreguntas.join(dfRespuestas, on="ID Resp Aceptada", "ID Respuesta", how="inner")`  

<details>
  <summary>Ver respuesta</summary>
  c - ` dfPreguntas.join(dfRespuestas, dfPreguntas["ID Resp Aceptada"] == dfRespuestas["ID Respuesta"], "inner")`
</details>

---

### Pregunta 10:  
¿Cuál de las siguientes opciones describe correctamente el concepto de una acción en Spark?  
a) Transforma un RDD o DataFrame en otro RDD o DataFrame.  
b) Crea un plan de ejecución sin obtener un resultado.  
c) Fuerza la ejecución de las transformaciones pendientes y devuelve un resultado.  
d) Define el esquema de un DataFrame.  

<details>
  <summary>Ver respuesta</summary>
  c - Fuerza la ejecución de las transformaciones pendientes y devuelve un resultado.
</details>