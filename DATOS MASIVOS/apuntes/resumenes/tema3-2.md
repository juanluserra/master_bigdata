# Operaciones Básicas en Spark

- Spark trabaja con colecciones inmutables y distribuidas de elementos, manipulándolos en paralelo.
- Utiliza APIs estructuradas (DataFrames y DataSets) y una API de bajo nivel (RDDs), aunque esta última está en desuso debido a la mayor eficiencia y nivel de abstracción de la API estructurada.
- Las operaciones se dividen en: creación, transformaciones y acciones.
- Spark distribuye automáticamente los datos y paraleliza las operaciones.

## Creación de DataFrames

- Los DataFrames se pueden crear a partir de ficheros, como CSVs. En el ejemplo del documento, se infiere el esquema de los datos automáticamente, aunque es preferible especificarlo de forma explícita.
- Las filas de un DataFrame son objetos de tipo Row.
- Es necesario crear un objeto SparkSession para trabajar con DataFrames.
- Se puede usar el método `read.csv` para leer un archivo CSV y crear un DataFrame, especificando opciones como inferir el esquema y si el archivo tiene cabecera.
- El método `printSchema()` muestra el esquema del DataFrame, `show()` muestra las filas, y `count()` devuelve el número de filas.
- El método `take(n)` devuelve las primeras n filas del DataFrame como una lista de objetos de tipo Row.

## Particiones

- Spark divide las filas de un DataFrame en un conjunto de particiones.
- El número de particiones por defecto depende del tamaño del clúster y de los datos.
- Se puede modificar el número de particiones de un DataFrame usando el método `repartition`.

## Transformaciones

- Son operaciones que transforman los datos pero no modifican los datos de origen (inmutabilidad) y se computan de forma "perezosa" (lazyness).
- Existen dos tipos de transformaciones:
    - **Transformaciones estrechas (narrow)**: Cada partición de entrada contribuye a una única partición de salida, no modificando el número de particiones y normalmente se realizan en memoria.
    - **Transformaciones anchas (wide)**: Cada partición de salida depende de varias (o todas) particiones de entrada, pueden suponer un barajado de datos, un cambio en el número de particiones y pueden implicar escrituras en disco.
- Ejemplos de transformaciones son `replace()` para reemplazar valores y `sort()` para ordenar los datos.
- El método `cache()` puede ser utilizado para mejorar el rendimiento de un DataFrame transformado.

## Acciones

- Obtienen un resultado, forzando a que se realicen las transformaciones pendientes.
- Al disparar una acción, se crea un Grafo Dirigido Acíclico (DAG) con las transformaciones necesarias, que Spark optimiza.
- Las acciones traducen el DAG en un plan de ejecución.
- Los tipos de acciones incluyen mostrar datos por consola, convertir datos Spark en datos del lenguaje y escribir datos a disco.

## Ejemplos de código

- El documento incluye ejemplos de cómo crear un SparkSession y un SparkContext, leer un fichero CSV en un DataFrame, imprimir el esquema, mostrar los datos, contar las filas, tomar las primeras filas, cambiar el número de particiones, realizar transformaciones y usar la función `cache`.