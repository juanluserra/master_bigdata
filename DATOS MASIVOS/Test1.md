# Examen Tipo Test: Apache Spark y Hadoop

### Pregunta 1:  
¿Cuál fue la principal motivación para el desarrollo de Apache Spark?  
a) La necesidad de un sistema de procesamiento de datos más lento que MapReduce.  
b) La ineficiencia de MapReduce para trabajos iterativos e interactivos.  
c) La falta de soporte para computaciones en memoria.  
d) La necesidad de una herramienta para el procesamiento exclusivo de datos en batch.  

<details>
  <summary>Ver respuesta</summary>
  b - La ineficiencia de MapReduce para trabajos iterativos e interactivos.
</details>

---

### Pregunta 2:  
¿Qué tipo de operaciones fuerzan la ejecución de las transformaciones pendientes en Spark?  
a) Transformaciones.  
b) Acciones.  
c) Particiones.  
d) Narrow transformations.  

<details>
  <summary>Ver respuesta</summary>
  b - Acciones.
</details>

---

### Pregunta 3:  
¿Qué es un DAG en el contexto de Spark?  
a) Un tipo de DataFrame.  
b) Un plan de ejecución de transformaciones.  
c) Un Grafo Dirigido Acíclico que conecta las transformaciones.  
d) Un tipo de partición de datos.  

<details>
  <summary>Ver respuesta</summary>
  c - Un Grafo Dirigido Acíclico que conecta las transformaciones.
</details>

---

### Pregunta 4:  
¿Cómo se puede especificar el esquema de un DataFrame en Spark?  
a) Utilizando un objeto de tipo RDD.  
b) Utilizando un objeto de tipo StructType y StructField.  
c) Leyendo directamente los datos de un fichero sin especificar un esquema.  
d) Utilizando un objeto de tipo SparkSession.  

<details>
  <summary>Ver respuesta</summary>
  b - Utilizando un objeto de tipo StructType y StructField.
</details>

---

### Pregunta 5:  
¿Cuál de las siguientes opciones describe correctamente la función de sample() en Spark?  
a) Limita el número de filas obtenidas de un DataFrame.  
b) Devuelve un nuevo DataFrame con una fracción de las filas.  
c) Ordena las filas de un DataFrame.  
d) Renombra las columnas de un DataFrame.  

<details>
  <summary>Ver respuesta</summary>
  b - Devuelve un nuevo DataFrame con una fracción de las filas.
</details>

---

### Pregunta 6:  
¿Qué hace la función lit() en PySpark?  
a) Convierte un literal en Python al formato interno de Spark.  
b) Renombra una columna en un DataFrame.  
c) Filtra filas de un DataFrame.  
d) Convierte un DataFrame a un RDD.  

<details>
  <summary>Ver respuesta</summary>
  a - Convierte un literal en Python al formato interno de Spark.
</details>

---

### Pregunta 7:  
¿Qué tipo de join produce un resultado que incluye los valores del primer DataFrame que NO existen en el segundo?  
a) Inner join.  
b) Left join.  
c) Left anti join.  
d) Cross join.  

<details>
  <summary>Ver respuesta</summary>
  c - Left anti join.
</details>

---

### Pregunta 8:  
¿Qué función se usa en Spark para trabajar con datos como si fueran un array de Python?  
a) Funciones Structs.  
b) Funciones de ventana.  
c) Funciones Arrays.  
d) Funciones UDF.  

<details>
  <summary>Ver respuesta</summary>
  c - Funciones Arrays.
</details>

---

### Pregunta 9:  
¿Cuál es el propósito principal de las funciones de ventana en Spark?  
a) Operar en grupos de filas devolviendo un único valor para cada fila.  
b) Eliminar los valores nulos de un DataFrame.  
c) Unir dos DataFrames.  
d) Convertir un DataFrame a RDD.  

<details>
  <summary>Ver respuesta</summary>
  a - Operar en grupos de filas devolviendo un único valor para cada fila.
</details>

---

### Pregunta 10:  
En el contexto de RDDs, ¿qué hace la función fold()?  
a) Devuelve una lista con todos los elementos del RDD.  
b) Devuelve el número de elementos del RDD.  
c) Es una versión general de reduce, que requiere un valor inicial para el operador.  
d) Devuelve un RDD con los elementos distintos.  

<details>
  <summary>Ver respuesta</summary>
  c - Es una versión general de reduce, que requiere un valor inicial para el operador.
</details>

---

### Pregunta 11:  
¿Qué significa que un RDD o DataFrame está "persisted" en Spark?  
a) Que se ha borrado de la memoria.  
b) Que se ha guardado en un fichero.  
c) Que se ha almacenado en memoria o en disco para ser reutilizado.  
d) Que se ha transformado a otro tipo de datos.  

<details>
  <summary>Ver respuesta</summary>
  c - Que se ha almacenado en memoria o en disco para ser reutilizado.
</details>

---

### Pregunta 12:  
¿Cuáles son los dos modos de despliegue (deploy-mode) de una aplicación Spark?  
a) Local y cluster.  
b) Client y cluster.  
c) Batch e interactivo.  
d) Map y reduce.  

<details>
  <summary>Ver respuesta</summary>
  b - Client y cluster.
</details>

---

### Pregunta 13:  
¿Qué es un "Spark job"?  
a) Una transformación sobre un RDD.  
b) Una acción que genera un trabajo.  
c) Un conjunto de particiones.  
d) Una etapa en la ejecución de Spark.  

<details>
  <summary>Ver respuesta</summary>
  b - Una acción que genera un trabajo.
</details>

---

### Pregunta 14:  
¿En qué se basa el modelo de programación MapReduce?  
a) En el uso exclusivo de DataFrames.  
b) En la combinación de operaciones Map y Reduce.  
c) En el procesamiento de datos en tiempo real.  
d) En la creación de grafos dirigidos.  

<details>
  <summary>Ver respuesta</summary>
  b - En la combinación de operaciones Map y Reduce.
</details>

---

### Pregunta 15:  
En MapReduce, ¿qué hace la fase de "Shuffle & Sort"?  
a) Ejecuta las funciones Map.  
b) Ejecuta las funciones Reduce.  
c) Agrupa y ordena los valores intermedios por clave.  
d) Lee los datos de entrada.  

<details>
  <summary>Ver respuesta</summary>
  c - Agrupa y ordena los valores intermedios por clave.
</details>

---

### Pregunta 16:  
En HDFS, ¿cuál es el tamaño por defecto de un bloque?  
a) 64 MB  
b) 128 MB  
c) 256 MB  
d) 512 MB  

<details>
  <summary>Ver respuesta</summary>
  b - 128 MB.
</details>

---

### Pregunta 17:  
¿Cuál es la función del NameNode en HDFS?  
a) Almacenar los bloques de datos.  
b) Gestionar los recursos del cluster.  
c) Guardar los metadatos del sistema de ficheros.  
d) Ejecutar las tareas MapReduce.  

<details>
  <summary>Ver respuesta</summary>
  c - Guardar los metadatos del sistema de ficheros.
</details>

---

### Pregunta 18:  
¿Qué es YARN en el contexto de Hadoop?  
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
