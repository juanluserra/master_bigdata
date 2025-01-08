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

---

### Pregunta 21:  
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

### Pregunta 22:  
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

### Pregunta 23:  
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

### Pregunta 24:  
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

### Pregunta 25:  
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

### Pregunta 26:  
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

### Pregunta 27:  
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

### Pregunta 28:  
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

### Pregunta 29:  
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

### Pregunta 30:  
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

### Pregunta 31:  
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

### Pregunta 32:  
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

### Pregunta 33:  
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

### Pregunta 34:  
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

### Pregunta 35:  
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

### Pregunta 36:  
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

### Pregunta 37:  
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

### Pregunta 38:  
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

### Pregunta 39:  
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

### Pregunta 40:  
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

### Pregunta 41:  
¿Cuál de las siguientes opciones describe mejor la diferencia entre una transformación "estrecha" (narrow) y una transformación "ancha" (wide) en Spark?  
a) Las transformaciones estrechas modifican el número de particiones, mientras que las anchas no.  
b) Las transformaciones anchas se ejecutan en memoria, mientras que las estrechas implican escrituras en disco.  
c) Las transformaciones estrechas dependen de una única partición de entrada para generar una partición de salida, mientras que las anchas pueden depender de varias o todas las particiones de entrada.  
d) No hay diferencia significativa entre transformaciones estrechas y anchas.  

<details>  
    <summary>Ver respuesta</summary>  
    c - Las transformaciones estrechas dependen de una única partición de entrada para generar una partición de salida, mientras que las anchas pueden depender de varias o todas las particiones de entrada.  
</details>  

---

### Pregunta 42:  
¿Qué es un DAG (Grafo Dirigido Acíclico) en el contexto de Spark?  
a) Un tipo de dato complejo usado para almacenar información estructurada.  
b) Un plan de ejecución que conecta las transformaciones necesarias para obtener los datos solicitados, creado al disparar una acción.  
c) Un método para particionar los datos en un DataFrame.  
d) Un tipo de join usado para unir dos DataFrames.  

<details>  
    <summary>Ver respuesta</summary>  
    b - Un plan de ejecución que conecta las transformaciones necesarias para obtener los datos solicitados, creado al disparar una acción.  
</details>  

---

### Pregunta 43:  
Cuando se lee un fichero CSV en Spark, ¿qué opción se utiliza para especificar si la primera fila del fichero debe ser tomada como cabecera?  
a) sep  
b) inferSchema  
c) header  
d) nullValue  

<details>  
    <summary>Ver respuesta</summary>  
    c - header  
</details>  

---

### Pregunta 44:  
¿Cuál de las siguientes afirmaciones sobre la persistencia en Spark es INCORRECTA?  
a) La persistencia (o cache) se usa para guardar datos en memoria o disco para evitar recomputaciones.  
b) Se puede añadir _2 (o _3) al nivel de persistencia para guardar 2 o 3 copias del RDD.  
c) El algoritmo LRU se usa para gestionar la cache.  
d) La persistencia siempre mejora el rendimiento y debe usarse en todas las operaciones.  

<details>  
    <summary>Ver respuesta</summary>  
    d - La persistencia debe usarse solo cuando sea necesaria ya que implica un coste  
</details>  

---

### Pregunta 45:  
¿Qué función de Spark permite agregar valores desde los worker nodes al driver?  
a) Variables de broadcast.  
b) Acumuladores.  
c) Funciones de ventana.  
d) Funciones definidas por el usuario (UDF).  

<details>  
    <summary>Ver respuesta</summary>  
    b - Acumuladores.  
</details>  

---

### Pregunta 46:  
En MapReduce, ¿cuál es el propósito de la fase de "Shuffle & Sort"?  
a) Ejecutar las funciones map.  
b) Agrupar los resultados del mapper por clave y ordenarlos.  
c) Ejecutar las funciones reduce.  
d) Leer los datos de entrada.  

<details>  
    <summary>Ver respuesta</summary>  
    b - Agrupar los resultados del mapper por clave y ordenarlos.  
</details>  

---

### Pregunta 47:  
¿Cuál es la función del NameNode en HDFS?  
a) Almacenar los bloques de datos.  
b) Gestionar el plan de ejecución de MapReduce.  
c) Almacenar los metadatos del sistema de ficheros.  
d) Ejecutar las tareas map y reduce.  

<details>  
    <summary>Ver respuesta</summary>  
    c - Almacenar los metadatos del sistema de ficheros.  
</details>  

---

### Pregunta 48:  
¿Qué comando se utiliza para inicializar el sistema HDFS?  
a) hdfs datanode -format  
b) hdfs namenode -format  
c) hdfs dfs -init  
d) hdfs start all  

<details>  
    <summary>Ver respuesta</summary>  
    b - hdfs namenode -format  
</details>  

---

### Pregunta 49:  
¿Cuál es el propósito de un "combiner" en MapReduce?  
a) Para ejecutar las tareas reduce.  
b) Para llevar la computación a los datos.  
c) Para minimizar la transferencia de datos entre mappers y reducers ejecutando una agregación local en cada nodo mapper.  
d) Para ordenar los datos.  

<details>  
    <summary>Ver respuesta</summary>  
    c - Para minimizar la transferencia de datos entre mappers y reducers ejecutando una agregación local en cada nodo mapper.  
</details>  

---

### Pregunta 50:  
¿Qué hace la función sample() en Spark DataFrames?  
a) Limita el número de filas obtenidas.  
b) Reemplaza valores nulos.  
c) Devuelve un nuevo DataFrame con una fracción de las filas.  
d) Elimina columnas.  

<details>  
    <summary>Ver respuesta</summary>  
    c - Devuelve un nuevo DataFrame con una fracción de las filas.  
</details>  

---

### Pregunta 51:  
¿Cuál de las siguientes opciones describe mejor el concepto de "acción" en Apache Spark?  
a) Una operación que transforma un RDD o DataFrame sin generar resultados inmediatos.  
b) Una operación que evalúa el plan de ejecución y devuelve un resultado, forzando la ejecución de las transformaciones pendientes.  
c) Una función para definir el esquema de un DataFrame.  
d) Una forma de particionar los datos.  

<details>  
    <summary>Ver respuesta</summary>  
    b - Una operación que evalúa el plan de ejecución y devuelve un resultado, forzando la ejecución de las transformaciones pendientes.  
</details>  

---

### Pregunta 52:  
Dado el siguiente código de PySpark, ¿qué operación se realiza sobre el DataFrame df?  
```python  
from pyspark.sql.functions import col  
df_filtered = df.filter(col("edad") > 18)  
```  
a) Se crea un nuevo DataFrame con todas las columnas donde la columna edad tiene valores mayores a 18.  
b) Se modifica el DataFrame df original, eliminando las filas donde edad no es mayor a 18.  
c) Se crea un nuevo DataFrame con la columna 'edad' y con valores mayores que 18.  
d) Se crea una nueva columna en el DataFrame 'df' donde se indica si la edad es mayor que 18.  

<details>  
    <summary>Ver respuesta</summary>  
    a - Se crea un nuevo DataFrame con todas las columnas donde la columna edad tiene valores mayores a 18.  
</details>  

---

### Pregunta 53:  
¿Qué hace la función repartition(n) en un DataFrame de Spark?  
a) Ordena las filas del DataFrame según la columna especificada n.  
b) Crea un nuevo DataFrame con n particiones.  
c) Elimina las particiones del DataFrame cuyo tamaño sea mayor a n.  
d) Muestra las n primeras filas del DataFrame.  

<details>  
    <summary>Ver respuesta</summary>  
    b - Crea un nuevo DataFrame con n particiones.  
</details>  

---

### Pregunta 54:  
Si quieres registrar un DataFrame llamado df_usuarios como una vista temporal para poder utilizar SQL sobre él, ¿cuál de las siguientes líneas de código PySpark usarías?  
a) df_usuarios.createGlobalTempView("usuarios_view")  
b) spark.sql("CREATE TEMPORARY VIEW usuarios_view AS SELECT * FROM df_usuarios")  
c) df_usuarios.createOrReplaceTempView("usuarios_view")  
d) df_usuarios.registerTempTable("usuarios_view")  

<details>  
    <summary>Ver respuesta</summary>  
    c - df_usuarios.createOrReplaceTempView("usuarios_view")  
</details>  

---

### Pregunta 55:  
En el contexto de Spark, ¿cuál es la función principal del SparkContext?  
a) Gestionar la ejecución de queries SQL.  
b) Actuar como el punto de entrada a la funcionalidad de Spark, permitiendo la creación de RDDs y el acceso a los servicios del cluster.  
c) Definir el esquema de un DataFrame.  
d) Realizar transformaciones de datos.  

<details>  
    <summary>Ver respuesta</summary>  
    b - Actuar como el punto de entrada a la funcionalidad de Spark, permitiendo la creación de RDDs y el acceso a los servicios del cluster.  
</details>  

---

### Pregunta 56:  
¿Cuál es la principal diferencia entre map y flatMap en el procesamiento de RDDs?  
a) map transforma cada elemento en un único elemento, mientras que flatMap puede transformar un elemento en cero, uno o más elementos.  
b) flatMap se usa sólo para realizar operaciones de agregación, mientras que map es para transformaciones.  
c) No hay diferencia, ambos realizan transformaciones uno a uno.  
d) map es para DataFrames y flatMap es para RDDs.  

<details>  
    <summary>Ver respuesta</summary>  
    a - map transforma cada elemento en un único elemento, mientras que flatMap puede transformar un elemento en cero, uno o más elementos.  
</details>  

---

### Pregunta 57:  
¿Cuál de las siguientes opciones describe mejor el uso de accumulators en Spark?  
a) Compartir variables entre las tareas de Spark.  
b) Realizar un join entre dos DataFrames.  
c) Agregar valores de todos los workers al driver.  
d) Definir funciones que se ejecutan en cada worker.  

<details>  
    <summary>Ver respuesta</summary>  
    c - Agregar valores de todos los workers al driver.  
</details>  

---

### Pregunta 58:  
En MapReduce, ¿qué hace el "mapper"?  
a) Recopila todos los datos procesados y reduce a un único resultado final.  
b) Toma los datos de entrada y los convierte en pares clave/valor intermedios.  
c) Ordena y agrupa los datos intermedios.  
d) Ejecuta el resultado final en un nodo determinado.  

<details>  
    <summary>Ver respuesta</summary>  
    b - Toma los datos de entrada y los convierte en pares clave/valor intermedios.  
</details>  

---

### Pregunta 59:  
En HDFS, ¿qué significa "factor de replicación"?  
a) El número de bloques que componen un fichero.  
b) El número de DataNodes activos en el clúster.  
c) El número de copias de cada bloque de datos que se almacenan en el clúster.  
d) El número de NameNodes que gestionan el espacio de nombres.  

<details>  
    <summary>Ver respuesta</summary>  
    c - El número de copias de cada bloque de datos que se almacenan en el clúster.  
</details>  

---

### Pregunta 60:  
Dado el siguiente código de PySpark, ¿qué tipo de join se está realizando entre los DataFrames df1 y df2?  
```python  
df_joined = df1.join(df2, "id", "left_outer")  
```  
a) Inner Join  
b) Right Outer Join  
c) Left Outer Join  
d) Full Outer Join  

<details>  
    <summary>Ver respuesta</summary>  
    c - Left Outer Join  
</details>  

---