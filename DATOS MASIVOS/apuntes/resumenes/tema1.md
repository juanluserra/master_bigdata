# Definición y Conceptos de Big Data

- **Big Data** se refiere al estudio y aplicaciones de conjuntos de datos que son tan grandes y complejos que el software de procesamiento de datos tradicional es inadecuado para manejarlos. Esto incluye desafíos como la captura, almacenamiento, análisis, búsqueda, compartición, transferencia, visualización, consulta, actualización, privacidad y origen de los datos.

- **Las 7 Vs del Big Data**: Estas son las características fundamentales que definen Big Data:
    - **Volumen**: La enorme cantidad de datos generados.
    - **Velocidad**: La rapidez con la que se generan y mueven los datos.
    - **Variedad**: La diversidad de tipos de datos, tanto estructurados como no estructurados.
    - **Veracidad**: La necesidad de garantizar que los datos sean correctos y fiables.
    - **Valor**: La capacidad de extraer valor de los datos.
    - **Variabilidad**: El significado de los datos puede variar con el tiempo.
    - **Visualización**: La importancia de presentar los datos de manera comprensible.

- **Fuentes de datos**: Los datos provienen de diversas fuentes como redes sociales, redes de sensores, GPS, datos genómicos, científicos y astronómicos.

- **Retos Tecnológicos**: Incluyen la búsqueda y refinamiento de datos, serialización, sistemas de almacenamiento, servidores y procesamiento. También involucran bases de datos, análisis y Business Intelligence (BI), lenguaje natural, machine learning y deep learning, así como visualización.

# Modelo de Procesamiento MapReduce

- **MapReduce** es un modelo de programación paralelo diseñado para la escalabilidad y tolerancia a fallos en sistemas de hardware de bajo coste.
- Se basa en la combinación de operaciones **Map** y **Reduce**.
- La operación **Map** genera pares clave/valor intermedios. La función Map toma una entrada (K1, V1) y produce una lista de pares intermedios (K2, V2).
- La operación **Reduce** combina los valores intermedios para cada clave particular. La función Reduce toma una clave (K2) y una lista de valores (V2), y produce una lista de valores (V3).
- El proceso está automatizado: Las entradas se dividen, los maps se ejecutan en paralelo y los resultados se mezclan y ordenan antes de ser procesados por los reduces.

## Ejemplos de Uso

- **WordCount**: Cuenta las ocurrencias de cada palabra en ficheros de texto.
- **Sort distribuido**: Ordena pares (id, valor) por id.
- **Índice inverso**: Crea un índice de palabras y los ficheros donde aparecen.

# Características de la Ejecución de MapReduce

- **Sistema de ficheros distribuido**: Se utiliza para gestionar los datos, como GFS (Google File System) o HDFS (Hadoop Distributed File System), donde los ficheros se dividen en bloques grandes y se replican.
- **Arquitectura Master-Worker**: Los map workers procesan splits de datos en el mismo nodo o rack que los datos de entrada. Los reduce workers graban su salida en el sistema distribuido.
- **Número de Maps y Reduces**: Se hacen M tareas map y R tareas reduce, donde M + R es mucho mayor que el número de elementos de procesamiento (PEs) disponibles.
- **Coordinación de las Tareas**: El master coordina las tareas, asignándolas a los workers y gestionando su estado.
- **Tolerancia a Fallos**: El sistema detecta fallos mediante heartbeats y reintenta tareas en otros nodos. Si una tarea falla repetidamente o un nodo completo falla, las tareas se relanzan. También se utiliza la ejecución especulativa para tareas rezagadas.

# Optimizaciones

- **Combinador**: Una función de agregación local para las claves repetidas de cada map, que reduce el tamaño de los datos intermedios. Debe ser conmutativa y asociativa para poder aplicarse.
- **Particionador**: Determina cómo se distribuyen los resultados de los maps a los reduces. El particionador por defecto es un hash de las claves, pero puede personalizarse según las necesidades.

# Implementaciones

- **Hadoop**: La implementación open source más popular de MapReduce.
- **Servicios en la nube**: Amazon Elastic MapReduce, Microsoft Azure HDInsight y Google Cloud Dataproc.

# Conclusiones Clave

- El modelo MapReduce oculta la complejidad de la distribución del trabajo y la tolerancia a fallos.
- Es altamente escalable, maneja fallos de hardware y reduce los costes de hardware, programación y administración.
- No es adecuado para todos los problemas, pero es muy apropiado para la ejecución en la nube.

# Ejemplos prácticos de MapReduce
Al estudiar, enfócate en entender cómo se descomponen los problemas en operaciones map y reduce, y cómo el sistema gestiona la distribución del trabajo y la tolerancia a fallos. Los ejemplos prácticos como WordCount, el ordenamiento distribuido y la creación de un índice inverso te ayudarán a comprender mejor el funcionamiento de MapReduce.

## Ejemplo 1: WordCount (Conteo de Palabras)

- **Objetivo**: Contar las ocurrencias de cada palabra en uno o varios ficheros de texto.
- **Entrada**: El sistema recibe como entrada líneas de texto.
- **Salida**: Pares (palabra, número de ocurrencias).

### Función Map
- Toma como entrada una línea de texto (valor) y para cada palabra en esa línea, emite un par clave-valor donde la clave es la palabra y el valor es 1.
- `map(key, value):`  
    `//key: nada, value: línea de texto`  
    `for each word w in value`  
    `emit(w, 1)`

### Función Reduce
- Recibe una palabra (clave) y una lista de valores (todos 1s). Suma todos los valores de la lista y emite un nuevo par clave-valor donde la clave es la palabra y el valor es la suma de las ocurrencias.
- `reduce(key, values):`  
    `//key: palabra; values: un iterador sobre los 1s`  
    `emit(key, sum(values))`

### Ejemplo de Proceso
- **Entrada**:
    - "En un lugar de la Mancha"
    - "Más vale la pena"
    - "en el rostro que"
    - "la mancha en"
    - "el corazón"
    - "El amor es deseo de belleza"
- **Map**: Cada línea genera pares (palabra, 1)
    - (en, 1), (un, 1), (lugar, 1), (de, 1), (la, 1), (mancha, 1) ...
    - (más, 1), (vale, 1), (la, 1), (pena, 1) ...
- **Shuffle & Sort**: Agrupa y ordena por clave (palabra).
- **Reduce**: Suma las ocurrencias de cada palabra.
- **Salida**:
    - (amor, 1), (corazón, 1), (deseo, 1), (en, 3), (la, 3), (mancha, 2), (pena, 1), (rostro, 1), (vale, 1), (belleza, 1), (de, 2), (el, 3), (es, 1), (lugar, 1), (más, 1), (que, 1), (un, 1)

## Ejemplo 2: Sort Distribuido (Ordenamiento Distribuido)

- **Objetivo**: Ordenar un conjunto de pares (id, valor) por el identificador (id).
- **Entrada**: Pares (id, valor).
- **Salida**: Pares (id, valor) ordenados por id.

### Función Map
- Función identidad. La salida del Map es la misma que la entrada.

### Función Reduce
- Función identidad. La salida del Reduce es la misma que la entrada.

### Función de Particionado (P)
- Clave k1 < k2 implica P(k1) < P(k2). Esto asegura que las claves menores que otra vayan a un 'reduce' anterior.

### Ejemplo de Proceso
- **Entrada**:
    - (avispa, 1), (hormiga, 1), (cerdo, 1)
    - (vaca, 1), (abeja, 1), (elefante, 1)
    - (pato, 1), (ñu, 1)
- **Map**: No modifica los datos (función identidad).
- **Shuffle & Sort**: Ordena y distribuye por rangos de clave usando la función de particionado (ej. A-M y N-Z).
- **Reduce**: No modifica los datos (función identidad).
- **Salida**:
    - (abeja, 1), (avispa, 1), (cerdo, 1), (elefante, 1), (hormiga, 1)
    - (ñu, 1), (oveja, 1), (pato, 1), (vaca, 1)

## Ejemplo 3: Índice Inverso

- **Objetivo**: Crear un índice inverso que mapee cada palabra a los ficheros en los que aparece.
- **Entrada**: Pares (nombre_fichero, línea_de_texto).
- **Salida**: Pares (palabra, [ficheros_conteniendo_palabra]).

### Función Map
- Para cada palabra en la línea de texto, emite un par clave-valor donde la clave es la palabra y el valor es el nombre del fichero.
- `map(key, value):`  
    `// key: nombre fichero; value: línea de texto`  
    `for each word w in value`  
    `emit(w, key)`

### Función Reduce
- Recibe una palabra (clave) y una lista de nombres de ficheros (valores). Ordena la lista de nombres de ficheros y emite un par donde la clave es la palabra y el valor es la lista ordenada de nombres de ficheros.
- `reduce(key, values):`  
    `// key: palabra; value: nombres de ficheros`  
    `emit(key, sort(values))`

### Ejemplo de Proceso
- **Entrada**:
    - quij.txt: "en un lugar de la mancha, de cuyo"
    - chej.txt: "en su lugar yo no iría"
- **Map**:
    - (en, quij.txt), (un, quij.txt), (lugar, quij.txt), (de, quij.txt), (la, quij.txt), (mancha, quij.txt), (de, quij.txt), (cuyo, quij.txt)
    - (en, chej.txt), (su, chej.txt), (lugar, chej.txt), (yo, chej.txt), (no, chej.txt), (iría, chej.txt)
- **Shuffle & Sort**: Agrupa por palabra
- **Reduce**: Ordena y genera lista de ficheros para cada palabra
    - (cuyo, [quij.txt]), (de, [quij.txt]), (en, [chej.txt, quij.txt]), (iría, [chej.txt]), (la, [quij.txt]), (lugar, [chej.txt, quij.txt]), (mancha, [quij.txt]), (no, [chej.txt]), (su, [chej.txt]), (un, [quij.txt]), (yo, [chej.txt])

### Mejora
- Eliminar duplicados en el Map para no emitir el nombre del fichero varias veces en el map.

Estos ejemplos te ayudarán a entender cómo se utiliza el modelo MapReduce para resolver problemas de procesamiento de datos. Recuerda que MapReduce se basa en dividir un problema en tareas Map y Reduce, y el sistema se encarga de la distribución del trabajo y la tolerancia a fallos.