# Introducción a Hadoop

- **Hadoop** es una implementación open-source de MapReduce para el procesamiento de grandes volúmenes de datos en clusters de hardware económico.
- Se compone de tres partes principales: HDFS (almacenamiento distribuido), YARN (planificación de tareas y gestión de recursos), y MapReduce (procesamiento distribuido).
- Ofrece ventajas como bajo coste, facilidad de uso y tolerancia a fallos.

# Instalación de Hadoop

- La instalación es relativamente simple, siendo una aplicación Java. Se puede obtener el paquete fuente de [hadoop.apache.org/releases.html](https://hadoop.apache.org/releases.html).
- Existen sistemas preconfigurados de empresas como Cloudera/Hortonworks.

## Modos de funcionamiento

- **Standalone**: todo en un solo nodo para pruebas.
- **Pseudodistribuido**: funciona como una instalación completa, pero en un solo nodo.
- **Totalmente distribuido**: para producción.

## Ficheros de configuración principales

- `core-site.xml`: configuración general.
- `hdfs-site.xml`: configuración de HDFS.
- `yarn-site.xml`: configuración de YARN.
- `mapred-site.xml`: configuración de MapReduce.

## Parámetros generales en `core-site.xml`

- `fs.defaultFS`: sistema de ficheros a usar.
- `hadoop.tmp.dir`: directorio base para temporales.
- `hadoop.security.authentication`: tipo de autenticación.
- `hadoop.security.authorization`: activación de autorización a nivel de servicio.

# HDFS (Hadoop Distributed File System)

- Es el sistema de ficheros distribuido recomendado para Hadoop.
- **Ventajas**: Almacenamiento de ficheros muy grandes, elevado ancho de banda y fiabilidad mediante replicación.
- **Inconvenientes**: Elevada latencia, ineficiencia con muchos ficheros pequeños, modificaciones solo al final de ficheros y modelo single-writer, multiple-readers.

## Conceptos clave

- **Namenode**: Mantiene metadatos de ficheros y bloques.
- **Datanodes**: Almacenan los bloques de datos.
- **Bloques**: Por defecto de 128 MB, tamaño configurable.
- **Réplicas**: Los bloques se replican a través del cluster, por defecto 3 réplicas.
- **Backup/Checkpoint node**: Mantiene copias de seguridad del Namenode.

## Propiedades configurables en `hdfs-site.xml`

- `dfs.namenode.name.dir`: directorios donde el Namenode guarda metadatos.
- `dfs.datanode.data.dir`: directorios donde los datanodes guardan los bloques de datos.
- `dfs.blocksize`: tamaño de bloque para nuevos ficheros.
- `dfs.replication`: número de réplicas por bloque.

# YARN (Yet Another Resource Negotiator)

- Se encarga de la gestión de recursos y la planificación de trabajos.
- Utiliza tres demonios:
    - **Resource Manager (RM)**: Planificador general.
    - **Node Managers (NM)**: Monitorización de recursos en cada nodo.
    - **Application Masters (AM)**: Gestión de aplicaciones, uno por aplicación.
- Permite ejecutar diferentes tipos de aplicaciones en el cluster, no solo MapReduce.
- Las aplicaciones se ejecutan en contenedores (YARN JVMs).

## Propiedades configurables en `yarn-site.xml`

- `yarn.resourcemanager.hostname`: Especifica el nombre del host donde se está ejecutando el demonio ResourceManager de YARN.
- `yarn.scheduler.maximum-allocation-vcores`: Define el número máximo de vcores (núcleos virtuales) que un ApplicationMaster puede solicitar al ResourceManager.
- `yarn.scheduler.minimum-allocation-mb`: Especifica la cantidad mínima de memoria (en megabytes) que un ApplicationMaster puede solicitar al ResourceManager.

# MapReduce

- Implementación de MapReduce en Hadoop.
- Programable en Java, con la posibilidad de usar otros lenguajes vía sockets (C++) o Streaming (Python, Ruby).

## Propiedades configurables en `mapred-site.xml`

- `yarn.app.mapreduce.am.resource.cpu-vcores`: Define el número de vcores (núcleos virtuales) que se asignan al Application Master (AM) de MapReduce.
- `mapreduce.{map,reduce}.memory.mb`: Especifica la cantidad máxima de memoria (en megabytes) que se asigna a las tareas map y reduce respectivamente.

# Interfaces con HDFS

- **Línea de comandos**: Comando `hdfs dfs`, que permite cargar, descargar y acceder a ficheros.
- **Interfaz web**.
- **API Java**.
- **API Python**.

## Comandos HDFS

- `hdfs dfs -ls`: Lista ficheros.
- `hdfs dfs -cp`: Copia ficheros.
- `hdfs dfs -mv`: Mueve ficheros.
- `hdfs dfs -rm`: Borra ficheros.
- `hdfs dfs -put`: Copia de local a HDFS.
- `hdfs dfs -get`: Copia de HDFS a local.

# Configuración de YARN y MapReduce

- Ajustar los parámetros de Hadoop al hardware disponible, balanceando el uso de RAM, cores y discos.
- Parámetros sensibles a la memoria como `yarn.scheduler.maximum-allocation-mb`, `yarn.nodemanager.resource.memory-mb`, `mapreduce.map.memory.mb`.
- La memoria se gestiona en función de la memoria disponible por nodo, el número de cores, y el número de discos.

# Ejemplo de programa MapReduce: WordCount

- Implementación básica en Java con clases `Mapper`, `Reducer` y `Driver`.
- Alternativas a Java: Hadoop Streaming y Hadoop Pipes.
- Ejemplo de MapReduce en Python usando Hadoop Streaming, con programas separados para mapper y reducer.
- Uso de la librería MrJob para simplificar la programación MapReduce en Python.


## Implementación básica en Java

El ejemplo de WordCount en Java se estructura en tres clases principales:

- **Mapper (WordCountMapper)**: Esta clase se encarga de la fase de map. Su función es procesar cada línea de entrada, dividirla en palabras y emitir pares clave-valor, donde la clave es la palabra y el valor es 1.
    - La clase extiende `Mapper<LongWritable, Text, Text, IntWritable>`, donde `LongWritable` es la clave de entrada (la posición de la línea en el fichero), `Text` es el valor de entrada (la línea de texto), `Text` es la clave de salida (la palabra) e `IntWritable` es el valor de salida (el número 1).
    - El método `map()` recibe una clave y un valor de entrada, convierte la línea a minúsculas y la divide en palabras utilizando una expresión regular. Por cada palabra encontrada, escribe un par clave-valor (palabra, 1) al contexto (`ctxt`).

- **Reducer (WordCountReducer)**: Esta clase se encarga de la fase de reduce. Su función es recibir los pares clave-valor emitidos por el mapper, agrupar los valores por clave (palabra) y sumar los valores para obtener la frecuencia total de cada palabra.
    - La clase extiende `Reducer<Text, IntWritable, Text, IntWritable>`, donde `Text` es la clave de entrada (la palabra), `IntWritable` es el valor de entrada (la cuenta 1 de cada palabra) y `Text` es la clave de salida (la palabra) e `IntWritable` es el valor de salida (la suma de las cuentas de cada palabra).
    - El método `reduce()` recibe una clave y una lista de valores (las cuentas de cada palabra), suma estos valores y escribe un nuevo par clave-valor (palabra, suma) al contexto (`ctxt`).

- **Driver (WordCountDriver)**: Esta clase es la encargada de configurar y lanzar el trabajo MapReduce.
    - Extiende `Configured` e implementa `Tool`. El método `run()` configura el `Job` con las clases mapper y reducer, define las rutas de entrada y salida, y lanza el trabajo.
    - El método `main()` ejecuta la clase usando `ToolRunner.run()`, que se encarga de parsear los argumentos de línea de comandos.

## Alternativas a Java

Hadoop ofrece alternativas para programar MapReduce en otros lenguajes:

- **Hadoop Streaming**: Permite crear código map-reduce en cualquier lenguaje que pueda leer de la entrada estándar y escribir en la salida estándar, como Python, Ruby, etc. Utiliza streams de Unix como interfaz entre Hadoop y el código.
    - **Mapper en Python (Hadoop Streaming)**: El mapper lee cada línea de la entrada estándar, la divide en palabras y emite cada palabra con un valor de 1 a la salida estándar, separadas por un tabulador.
    - **Reducer en Python (Hadoop Streaming)**: El reducer lee las salidas del mapper de la entrada estándar, agrupa las cuentas por palabra, y calcula la suma total para cada palabra. La salida se produce a la salida estándar con el mismo formato de clave-valor separados por tabuladores.
    - Para ejecutar el código, se utiliza el comando `mapred streaming` especificando los ficheros del mapper y reducer, la entrada y la salida en HDFS.

- **Hadoop Pipes**: Es una interfaz C++ a Hadoop MapReduce. Utiliza sockets para la comunicación entre el NodeManager y el proceso C++ que ejecuta el map o el reduce.

- **MrJob**: Es una librería de Python que simplifica la escritura de programas MapReduce. Permite ejecutar los programas en Hadoop, EMR, etc.
    - En el caso de WordCount con MrJob, se crea una clase que hereda de `MRJob`, con métodos `mapper()` y `reducer()` que generan pares clave-valor usando la construcción `yield`.
    - La infraestructura de MrJob se encarga de leer los datos de entrada y de imprimir los resultados. Para ejecutar en Hadoop, se utiliza la opción `-r hadoop` con la ruta del fichero en HDFS.

## Ejemplo de MapReduce en Python usando Hadoop Streaming

El ejemplo de MapReduce en Python con Hadoop Streaming consiste en dos programas separados:

- **Mapper (wordcount-mapper.py)**:
    - Este script lee las líneas de la entrada estándar, elimina los espacios en blanco al principio y al final, divide la línea en palabras, y para cada palabra, escribe a la salida estándar un par clave-valor con la palabra y el número 1, separados por un tabulador.

- **Reducer (wordcount-reducer.py)**:
    - Este script lee los pares clave-valor (palabra, 1) de la entrada estándar, realiza la suma de los valores para cada palabra y escribe el resultado a la salida estándar, en formato clave-valor (palabra, suma), separados por tabulador.

### Ejecución

Para ejecutar este ejemplo se usa el comando `mapred streaming`:

```sh
mapred streaming \
-file wordcount-mapper.py \
-mapper wordcount-mapper.py \
-file wordcount-reducer.py \
-reducer wordcount-reducer.py \
-input <FICHERO EN HDFS> \
-output <DIRECTORIO EN HDFS>
```

Los parámetros `-file` especifican los ficheros que se enviarán a los contenedores de computación. Los parámetros `-mapper` y `-reducer` definen los scripts que se usarán para estas funciones. Finalmente, se especifica el fichero de entrada en HDFS y el directorio de salida en HDFS.

Este ejemplo muestra cómo el paradigma MapReduce puede ser implementado tanto en Java como en otros lenguajes, utilizando las facilidades que ofrece Hadoop. Cada una de estas implementaciones tiene sus particularidades, pero todas cumplen el mismo objetivo: contar la frecuencia de las palabras en un conjunto de datos.


# Filesystems en Hadoop

- Hadoop soporta diversos sistemas de ficheros, incluyendo HDFS, local, S3, etc.
- Comando `hadoop fs` para interactuar con los diferentes sistemas de ficheros.

# Interfaz Java

- Utiliza la clase abstracta `org.apache.hadoop.fs.FileSystem`.
- Clases de interés: `Path`, `FileStatus`, `FSDataInputStream` y `FSDataOutputStream`.
- Ejemplos de lectura y escritura de ficheros en HDFS.

# Interfaz Python

- Utiliza la librería `pyarrow` para interactuar con HDFS y otros sistemas de ficheros.
- Uso de `pyarrow.fs.HadoopFileSystem` para acceder a HDFS.
- Ejemplos de operaciones con metadatos y streams de ficheros.

# Herramientas para la gestión de HDFS

- `hdfs dfsadmin`: para obtener información del estado del HDFS.
- `hdfs fsck`: para chequear la salud del filesystem.
- `hdfs balancer`: para rebalancear bloques entre datanodes.

# Otras interfaces a HDFS

- **WebHDFS**: API REST para acceder a HDFS mediante HTTP.
- **HttpFS**: Gateway REST HTTP para operaciones de HDFS.
- **HDFS NFS Gateway**: Permite montar HDFS como un sistema de ficheros local.

# Aspectos adicionales

- El Namenode es un punto único de fallo (SPOF), pero se puede recuperar usando los checkpoints.
- HDFS High-Availability para evitar el SPOF.
- HDFS Federation para escalar el espacio de nombres.
- Hadoop v3 introduce erasure coding para reducir el overhead de la replicación.
