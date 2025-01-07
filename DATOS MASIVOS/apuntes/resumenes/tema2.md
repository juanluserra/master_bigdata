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

- `yarn.app.mapreduce.am.resource.cpu-vcores`
- `mapreduce.{map,reduce}.memory.mb`

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
