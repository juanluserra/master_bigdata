# Resúmenes Individuales de los Temas (PDFs)

## 3-01-Introducción a Apache Spark

- **Conceptos básicos**: Introducción a Apache Spark y sus APIs.
- **APIs de Spark Core**: API estructurada (alto nivel) y API de bajo nivel. Se recomienda la API estructurada por su rendimiento.
- **Tipos de datos en la API estructurada**: Introducción a los Datasets.
- **Formas de lanzar Spark**: Uso de Python con IPython o Jupyter, R y SQL.
- **Documentación**: Enlaces a la documentación oficial de Apache Spark y sus APIs.

## 3-02-Operaciones básicas en Spark

- **Operaciones básicas**: Lectura de datos y acciones.
- **Inferencia de esquemas**: Spark puede inferir el esquema automáticamente, aunque es recomendable especificarlo.
- **Rows**: Las filas de un DataFrame son objetos de tipo Row.
- **Acciones**: Operaciones que obtienen un resultado y forzan la ejecución de transformaciones pendientes.
- **Ejemplo de lectura de un CSV**: Uso de wget para obtener el archivo.

## 3-03-Introducción a los DataFrames

- **Creación con esquemas**: Importancia de especificar el esquema al crear un DataFrame.
- **Creación a partir de ficheros de texto**: Cada línea de un fichero de texto se guarda como una fila.
- **Creación a partir de ficheros CSV**: Ejemplo con un fichero CSV de Stack Overflow en español.
- **Opciones al leer ficheros**: Detalles sobre opciones como mode, sep, inferSchema, lineSep, header, nullValue y compression.
- **Particionado**: Explicación sobre la partición de ficheros por el valor de una columna.

## 3-04-Operaciones con DataFrames

- **Uso de UDFs**: Ejemplo de uso de UDFs (User Defined Functions) en Python.
- **Vistas temporales**: Registro de un DataFrame como una vista temporal para usar SQL.
- **Listado de Tablas**: Uso de `spark.sql("SHOW TABLES").show()`.

## 3-05-RDDs

- **API de bajo nivel**: Enfoque en los RDDs (Resilient Distributed Datasets).
- **Operación fold**: Explicación de la operación fold.
- **top y takeOrdered**: Obtención de los elementos más grandes y más pequeños de un RDD.
- **RDDs clave/valor**: Creación de RDDs clave/valor a partir de listas de tuplas, otros RDDs o usando zip con dos RDDs.

## 3-06-Persistencia y particionado

- **Recuperación de fallos**: Recomputación de DataFrames o RDDs en caso de fallo.
- **Gestión de la cache**: Uso del algoritmo LRU (Least Recently Used) para gestionar la cache.
- **Uso de la persistencia**: Advertencia sobre el coste de la persistencia.

## 3-10-Aspectos avanzados

- **Plan lógico y físico**: Generación de planes lógicos y físicos en Spark.
- **Trabajos, etapas y tareas**: Descomposición de una acción en trabajos, etapas y tareas.
- **explain() y toDebugString()**: Uso de estos métodos para ver el plan físico de DataFrames y RDDs.
- **Configuración del Spark Master**: Elección del master de Spark según variables de entorno.

## Tema1-BigDataMapReduce

- **Definición de Big Data**: Descripción y desafíos de Big Data.
- **Modelo de procesamiento MapReduce**: Explicación del modelo MapReduce.
- **Ejemplos de uso**: WordCount, Sort distribuido e índice inverso.
- **Número de Maps y Reduces**: Impacto en el rendimiento y utilización del clúster.
- **Coordinación de tareas**: Coordinación de tareas por el Master.
- **Tolerancia a fallos**: Manejo de fallos en MapReduce.
- **Optimizaciones**: Uso del combinador y particionador.

## Tema2-Hadoop-HDFS

- **Introducción a Hadoop**: Descripción de Hadoop y HDFS.
- **Conceptos de HDFS**: NameNode, DataNodes, bloques y réplicas.
- **Propiedades configurables de HDFS**: Configuración de propiedades como directorios y tamaño de bloques.
- **Interfaces con HDFS**: Diferentes interfaces para interactuar con HDFS.
- **YARN y MapReduce**: Introducción a YARN y sus demonios.
- **Comandos para YARN y MapReduce**: Uso de comandos yarn y mapred.
- **Memoria en YARN y MapReduce**: Gestión de memoria en Hadoop.
- **Ejemplo MapReduce: WordCount**: Implementación de WordCount en Java y Python.
- **Filesystems en Hadoop**: Descripción de filesystems soportados por Hadoop.
- **Interfaz en línea de comandos**: Comandos para gestionar ficheros y directorios en HDFS.
- **Escritura de ficheros**: Métodos create y append, y uso de hflush() y hsync().
- **Interfaz Python**: Uso de pyarrow para interactuar con HDFS.
- **Herramientas de gestión de HDFS**: Uso de hdfs dfsadmin y hdfs fsck.
- **Otras interfaces a HDFS**: WebHDFS, HttpFS y HDFS NFS Gateway.
- **Otros aspectos**: Funcionamiento del NameNode, Checkpoint Node y localización de réplicas.

## p1

- **Guía práctica para instalación y despliegue de Hadoop 3 con Docker**.
- **Creación de imágenes Docker**: Pasos para crear imágenes Docker.
- **Configuración de los demonios**: Configuración mediante ficheros core-site.xml, hdfs-site.xml, yarn-site.xml y mapred-site.xml.
- **Inicialización y parada de HDFS**: Uso de `hdfs namenode -format` y detención de demonios.
- **Automatización del inicio**: Creación de un script para iniciar demonios automáticamente.
- **Añadir un backup node y un TimeLineServer**: Configuración e inicio del servicio de backup y TimeLine de YARN.
- **Añadir y retirar DataNodes/NodeManagers**: Uso de ficheros de inclusión y exclusión y comandos hdfs dfsadmin y yarn rmadmin.
- **Rack awareness**: Configuración de la topología de red.

## p2

- **Guía práctica para interacción con HDFS usando Python y pyarrow**.
- **Instalación de pyarrow**: Instalación y configuración de la variable de entorno CLASSPATH.
- **Lectura de ficheros en HDFS**: Uso de Python y pyarrow para leer ficheros de texto.
- **Copy_half_file**: Programa para copiar la mitad inferior de un fichero en HDFS.
- **Comandos hdfs dfsadmin y hdfs fsck**: Prueba de comandos para gestión del HDFS.
- **Entrega**: Código desarrollado y documento con capturas de pantalla y explicaciones.

## p3

- **Guía práctica para uso de MapReduce con datasets reales usando Python y MrJob**.
- **Datasets**: cite75_99.txt, apat63_99.txt y country_codes.txt.
- **Formato de los ficheros**: Descripción del contenido y formato de los ficheros CSV.
- **Actividad MapReduce con Python**:
    - **citingpatents1**: Programa para obtener la lista de patentes que citan a cada patente.
    - **citationnumberbypatent_chained2**: Programa para obtener el número de citas de cada patente.
    - **countrypatents3**: Programa Map-only para obtener una lista de patentes por país y año.
    - **sortsecundario4**: Programa para ordenar los resultados de countrypatents3.
- **Entrega**: Ficheros .py modificados y README con instrucciones.
- **Instalación de MrJob**: Instalación en el clúster.

## p4

- **Guía práctica para uso de Apache Spark con datasets reales usando Python**.
- **Ejercicios**:
    - **Ejercicio 1**: Extraer información de cite75_99.txt y apat63_99.txt, y guardar en formato Parquet.
    - **Ejercicio 2**: Obtener información combinada de los ficheros Parquet creados en el ejercicio 1.
    - **Ejercicio 3**: Obtener las patentes ordenadas por número de citas para un grupo de países especificado.
    - **Ejercicio 4**: Obtener el número de patentes por país y década.
- **Requisitos**: Salida de los scripts y recepción de argumentos en línea de comandos.
- **Ayuda para la realización de los ejercicios**: Ejemplos de código y comandos.
- **Uso de funciones de ventana**: Para el ejercicio 3.
- **Formato de salida**: Guardar DataFrames en ficheros CSV o Parquet.