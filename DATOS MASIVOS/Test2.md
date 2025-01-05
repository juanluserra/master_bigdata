# Examen Tipo Test: Apache Spark y Hadoop


### Pregunta 1:  
¿Qué tipo de computación no es soportada eficientemente por Apache Spark, además del modelo MapReduce?  
a) Consultas interactivas.  
b) Procesamiento de streaming.  
c) Computaciones en memoria.  
d) Ninguna de las anteriores.  

<details>
  <summary>Ver respuesta</summary>
  d - Ninguna de las anteriores.
</details>

---

### Pregunta 2:  
¿Cómo se denominan las operaciones que transforman datos en Spark sin modificar los datos de origen?  
a) Acciones.  
b) Particiones.  
c) Transformaciones.  
d) DAGs.  

<details>
  <summary>Ver respuesta</summary>
  c - Transformaciones.
</details>

---

### Pregunta 3:  
¿Qué implica una transformación ancha (wide) en Spark?  
a) Que cada partición de entrada contribuye a una única partición de salida.  
b) Que se realiza principalmente en memoria.  
c) Que cada partición de salida depende de varias particiones de entrada.  
d) Que no modifica el número de particiones.  

<details>
  <summary>Ver respuesta</summary>
  c - Que cada partición de salida depende de varias particiones de entrada.
</details>

---

### Pregunta 4:  
¿Cuál es la función principal de un objeto SparkSession?  
a) Definir el esquema de un DataFrame.  
b) Crear un RDD a partir de un fichero.  
c) Crear o obtener una sesión de Spark.  
d) Gestionar las particiones de un DataFrame.  

<details>
  <summary>Ver respuesta</summary>
  c - Crear o obtener una sesión de Spark.
</details>

---

### Pregunta 5:  
¿Qué parámetro se utiliza en Spark para especificar qué hacer cuando se encuentran registros corruptos al leer un fichero?  
a) sep.  
b) inferSchema.  
c) mode.  
d) header.  

<details>
  <summary>Ver respuesta</summary>
  c - mode.
</details>

---

### Pregunta 6:  
¿Cuál es la función de lit() en PySpark?  
a) Renombrar una columna.  
b) Filtrar filas.  
c) Convertir un literal de Python al formato interno de Spark.  
d) Eliminar filas duplicadas.  

<details>
  <summary>Ver respuesta</summary>
  c - Convertir un literal de Python al formato interno de Spark.
</details>

---

### Pregunta 7:  
¿Qué tipo de join incluye todas las filas del segundo DataFrame y, si no hay equivalencia en el primero, pone null?  
a) Inner join.  
b) Left semi join.  
c) Right outer join.  
d) Left anti join.  

<details>
  <summary>Ver respuesta</summary>
  c - Right outer join.
</details>

---

### Pregunta 8:  
¿Qué tipo de dato complejo en Spark permite trabajar con datos como si fuera un array de Python?  
a) Structs.  
b) Maps.  
c) Arrays.  
d) UDFs.  

<details>
  <summary>Ver respuesta</summary>
  c - Arrays.
</details>

---

### Pregunta 9:  
¿Cuál es la función de window en Spark?  
a) Calcular funciones agregadas sobre un grupo de filas, devolviendo un valor único por cada fila.  
b) Unir dos DataFrames.  
c) Eliminar valores nulos de un DataFrame.  
d) Convertir un DataFrame a un RDD.  

<details>
  <summary>Ver respuesta</summary>
  a - Calcular funciones agregadas sobre un grupo de filas, devolviendo un valor único por cada fila.
</details>

---

### Pregunta 10:  
¿Qué acción se utiliza en RDDs para combinar elementos en paralelo aplicando un operador que debe ser un monoide conmutativo?  
a) aggregate.  
b) fold.  
c) reduce.  
d) count.  

<details>
  <summary>Ver respuesta</summary>
  c - reduce.
</details>

---

### Pregunta 11:  
¿Qué significa que un RDD o DataFrame está "persisted" en Spark?  
a) Que se ha borrado de la memoria.  
b) Que se ha transformado a otro tipo de datos.  
c) Que se ha almacenado en memoria o en disco para ser reutilizado.  
d) Que se ha guardado en un fichero.  

<details>
  <summary>Ver respuesta</summary>
  c - Que se ha almacenado en memoria o en disco para ser reutilizado.
</details>

---

### Pregunta 12:  
¿Qué modo de despliegue de Spark ejecuta el driver en un nodo del clúster?  
a) Local.  
b) Client.  
c) Cluster.  
d) Batch.  

<details>
  <summary>Ver respuesta</summary>
  c - Cluster.
</details>

---

### Pregunta 13:  
¿Cómo se descompone un Spark job?  
a) En transformaciones y acciones.  
b) En particiones.  
c) En una o más etapas.  
d) En un DAG.  

<details>
  <summary>Ver respuesta</summary>
  c - En una o más etapas.
</details>

---

### Pregunta 14:  
¿Cuál es la principal característica del modelo de programación MapReduce?  
a) El uso exclusivo de DataFrames.  
b) La combinación de operaciones Map y Reduce.  
c) El procesamiento de datos en tiempo real.  
d) La creación de grafos dirigidos.  

<details>
  <summary>Ver respuesta</summary>
  b - La combinación de operaciones Map y Reduce.
</details>

---

### Pregunta 15:  
¿Cuál es el objetivo principal de la fase "Shuffle & Sort" en MapReduce?  
a) Ejecutar las funciones Map.  
b) Ejecutar las funciones Reduce.  
c) Agrupar y ordenar los valores intermedios por clave.  
d) Leer los datos de entrada.  

<details>
  <summary>Ver respuesta</summary>
  c - Agrupar y ordenar los valores intermedios por clave.
</details>

---

### Pregunta 16:  
¿Cuál es el tamaño por defecto de un bloque en HDFS?  
a) 64 MB.  
b) 128 MB.  
c) 256 MB.  
d) 512 MB.  

<details>
  <summary>Ver respuesta</summary>
  b - 128 MB.
</details>

---

### Pregunta 17:  
¿Qué componente de HDFS gestiona los metadatos del sistema de archivos?  
a) DataNode.  
b) ResourceManager.  
c) NameNode.  
d) ApplicationMaster.  

<details>
  <summary>Ver respuesta</summary>
  c - NameNode.
</details>

---

### Pregunta 18:  
¿Cuál es la función principal de YARN en Hadoop?  
a) Un sistema de ficheros distribuido.  
b) Una herramienta para la gestión de metadatos.  
c) Un gestor de recursos y planificación de trabajos.  
d) Un lenguaje de programación para MapReduce.  

<details>
  <summary>Ver respuesta</summary>
  c - Un gestor de recursos y planificación de trabajos.
</details>

---

### Pregunta 19:  
¿Qué comando se utiliza en Hadoop para interactuar con trabajos MapReduce?  
a) hdfs dfs.  
b) yarn application.  
c) mapred job.  
d) spark-submit.  

<details>
  <summary>Ver respuesta</summary>
  c - mapred job.
</details>

---

### Pregunta 20:  
¿Qué tipo de archivo crea el comando mapred archive?  
a) Un archivo comprimido .zip.  
b) Un archivo .har.  
c) Un archivo de texto plano.  
d) Un directorio en HDFS.  

<details>
  <summary>Ver respuesta</summary>
  b - Un archivo .har.
</details>

---
