# Examen Tipo Test: Big Data

### Pregunta 1:  
¿Cuál de las siguientes NO es una de las 7 Vs del Big Data?  
a) Volumen  
b) Velocidad  
c) Veracidad  
d) Virtualización  

<details>
  <summary>Ver respuesta</summary>
  d - Virtualización
</details>

---

### Pregunta 2:  
¿Qué componente de Hadoop se encarga del almacenamiento distribuido?  
a) YARN  
b) HDFS  
c) MapReduce  
d) Spark  

<details>
  <summary>Ver respuesta</summary>
  b - HDFS
</details>

---

### Pregunta 3:  
¿Qué tamaño de bloque utiliza HDFS por defecto?  
a) 64 MB  
b) 128 MB  
c) 256 MB  
d) 1 GB  

<details>
  <summary>Ver respuesta</summary>
  b - 128 MB
</details>

---

### Pregunta 4:  
En el modelo MapReduce, ¿qué hace la función 'map'?  
a) Combina los valores intermedios para cada clave particular.  
b) Genera claves/valores intermedios.  
c) Ordena los datos.  
d) Reduce la cantidad de datos.  

<details>
  <summary>Ver respuesta</summary>
  b - Genera claves/valores intermedios.
</details>

---

### Pregunta 5:  
¿Cuál de los siguientes NO es un uso común de MapReduce según los documentos?  
a) Construcción de índices para buscadores.  
b) Análisis de datos astronómicos.  
c) Edición de video.  
d) Minería de datos.  

<details>
  <summary>Ver respuesta</summary>
  c - Edición de video.
</details>

---

### Pregunta 6:  
¿Qué hace el 'combiner' en MapReduce?  
a) Combina los resultados finales.  
b) Realiza una agregación local de claves repetidas en cada map.  
c) Distribuye los datos entre los nodos.  
d) Ordena los datos.  

<details>
  <summary>Ver respuesta</summary>
  b - Realiza una agregación local de claves repetidas en cada map.
</details>

---

### Pregunta 7:  
¿Qué demonio de YARN se encarga de la gestión de aplicaciones?  
a) Resource Manager (RM)  
b) Node Manager (NM)  
c) Application Master (AM)  
d) Data Node (DN)  

<details>
  <summary>Ver respuesta</summary>
  c - Application Master (AM)
</details>

---

### Pregunta 8:  
¿Qué es Hadoop Streaming?  
a) Una forma de ejecutar MapReduce solo con código Java.  
b) Una API que permite usar otros lenguajes de programación para MapReduce.  
c) Una herramienta para la gestión de HDFS.  
d) Un tipo de sistema de ficheros.  

<details>
  <summary>Ver respuesta</summary>
  b - Una API que permite usar otros lenguajes de programación para MapReduce.
</details>

---

### Pregunta 9:  
¿Qué función proporciona la clase FSDataInputStream en la API Java de Hadoop?  
a) Escritura de datos en un fichero.  
b) Gestión de metadatos de ficheros.  
c) Lectura de datos de un fichero, con acceso aleatorio.  
d) Creación de directorios.  

<details>
  <summary>Ver respuesta</summary>
  c - Lectura de datos de un fichero, con acceso aleatorio.
</details>

---

### Pregunta 10:  
¿Cuál es el propósito de la herramienta hdfs balancer?  
a) Chequear la salud de los ficheros en HDFS.  
b) Rebalancear los bloques entre los datanodes.  
c) Gestionar cuotas en directorios.  
d) Administrar los nodos del cluster.  

<details>
  <summary>Ver respuesta</summary>
  b - Rebalancear los bloques entre los datanodes.
</details>

---

### Pregunta 11:  
¿Qué significa que HDFS tenga "tolerancia a fallos"?  
a) Que el sistema nunca tendrá fallos.  
b) Que los datos se almacenan en un único nodo y se replica si el nodo falla.  
c) Que los ficheros se dividen en bloques y se replican.  
d) Que el sistema está diseñado para seguir funcionando aunque algunos componentes fallen.  

<details>
  <summary>Ver respuesta</summary>
  d - Que el sistema está diseñado para seguir funcionando aunque algunos componentes fallen.
</details>

---

### Pregunta 12:  
¿Qué es un 'split' en el contexto de MapReduce?  
a) Una copia de seguridad de los datos.  
b) Una partición lógica de los datos de entrada que se procesa por un map.  
c) Un tipo de formato de datos.  
d) Una unidad de almacenamiento en HDFS.  

<details>
  <summary>Ver respuesta</summary>
  b - Una partición lógica de los datos de entrada que se procesa por un map.
</details>

---

### Pregunta 13:  
¿Cuál es la función principal del NameNode en HDFS?  
a) Almacenar los bloques de datos.  
b) Procesar los datos.  
c) Mantener la información (metadatos) de los ficheros y bloques.  
d) Gestionar las tareas de MapReduce.  

<details>
  <summary>Ver respuesta</summary>
  c - Mantener la información (metadatos) de los ficheros y bloques.
</details>

---

### Pregunta 14:  
¿Qué parámetros del fichero yarn-site.xml se utilizan para configurar la memoria máxima y mínima que se puede conceder a un contenedor?  
a) dfs.blocksize y dfs.replication  
b) yarn.nodemanager.resource.memory-mb y mapreduce.map.memory.mb  
c) mapreduce.map.java.opts y mapreduce.reduce.java.opts  
d) yarn.scheduler.maximum-allocation-mb y yarn.scheduler.minimum-allocation-mb  

<details>
  <summary>Ver respuesta</summary>
  d - yarn.scheduler.maximum-allocation-mb y yarn.scheduler.minimum-allocation-mb
</details>

---

### Pregunta 15:  
¿Cuál de las siguientes opciones describe mejor el concepto de 'ejecución especulativa' en MapReduce?  
a) Ejecutar las tareas solo cuando hay suficientes recursos.  
b) Ejecutar las tareas solo en nodos con baja carga.  
c) Lanzar copias de tareas que están tardando mucho, para acelerar el proceso.  
d) Ejecutar las tareas en un orden predefinido.  

<details>
  <summary>Ver respuesta</summary>
  c - Lanzar copias de tareas que están tardando mucho, para acelerar el proceso.
</details>

---

Espero que este examen te sea útil. Si necesitas más preguntas o tienes alguna otra solicitud, no dudes en preguntar.