# Examen 1

1. ¿Qué problema puede surgir al eliminar variables con varianza cero antes de aplicar validación cruzada?
- a) Puede aumentar artificialmente la varianza total del conjunto
- b) Pueden convertirse en variables con varianza distinta a cero
- c) Pueden introducir sesgos en el modelo resultante

2. ¿Cuál de las siguientes NO es una técnica válida para tratar el ruido en los datos?
   a) Suavizado por suavización de bordes (edge smoothing)
   b) Ajuste mediante regresión
   c) Agrupamiento para detección de outliers

3. ¿Qué condición debe cumplirse para considerar que una variable tiene varianza cercana a cero?
   a) La media de los valores debe ser inferior a un umbral
   b) El ratio entre el valor más frecuente y el segundo más frecuente debe superar un límite
   c) La correlación debe ser negativa con todas las demás variables

4. ¿Cuál es una limitación crítica de la imputación simple por la media?
   a) Puede generar multicolinealidad
   b) Aumenta la dimensionalidad del conjunto
   c) Elimina la información de que el dato estaba ausente

5. ¿Qué técnica transforma variables categóricas a numéricas mediante información de orden?
   a) One-hot encoding
   b) Target encoding
   c) Codificación ordinal

6. ¿Qué método NO requiere la generación explícita de subconjuntos de características?
   a) Wrapper
   b) Ranker
   c) Método basado en envoltura

7. ¿Qué propiedad debe cumplir un subconjunto óptimo G de características según el criterio probabilístico?
   a) P(C|F) < P(C|G)
   b) P(C|G) ≈ P(C|F)
   c) P(C|G) = 1

8. ¿Qué técnica de extracción de características es particularmente sensible a la linealidad de los datos?
   a) t-SNE
   b) PCA
   c) UMAP

9. ¿Cuál es la principal ventaja de los métodos embebidos frente a filtros y envoltura?
   a) No generan modelos
   b) Se integran con el proceso de entrenamiento
   c) Usan transformaciones no supervisadas

10. ¿Qué riesgo conlleva usar todos los datos para seleccionar características?
    a) Pérdida de generalización
    b) Reducción de dimensionalidad innecesaria
    c) Redundancia de clases

11. ¿Cuál de los siguientes tests se usa para comparar clasificadores en varios dominios?
    a) Test de McNemar
    b) Test de Friedman
    c) Test t pareado

12. ¿Qué indica un punto (0,1) en una curva ROC?
    a) El clasificador acierta todas las clases negativas
    b) Clasificador perfecto
    c) Máximo número de falsos positivos

13. ¿Cuál es la ventaja de la envolvente convexa en análisis ROC?
    a) Estimar la matriz de confusión sin etiquetas
    b) Determinar el coste óptimo sin slope
    c) Descartar clasificadores subóptimos

14. ¿Qué mide el AUC desde una perspectiva probabilística?
    a) La diferencia entre precisión y sensibilidad
    b) Probabilidad de que una instancia positiva tenga puntuación mayor que una negativa
    c) Número de falsos positivos en el peor caso

15. ¿Qué sugiere una pendiente (slope) inferior a 1 en una línea de coste en análisis ROC?
    a) El coste de los falsos negativos es mayor
    b) El número de ejemplos positivos es inferior
    c) El coste de los falsos positivos es mayor

16. ¿Qué implica un intervalo de confianza estrecho sobre una métrica de rendimiento?
    a) Que la métrica tiene alta varianza
    b) Que se ha sobreajustado el modelo
    c) Que hay poca incertidumbre en la estimación

17. ¿Qué técnica es más robusta frente a conjuntos de datos pequeños?
    a) Hold-out
    b) Bootstrap
    c) Validación cruzada estratificada

18. ¿Qué medida se obtiene al sumar sensibilidad y especificidad y dividir entre dos?
    a) F1
    b) Balanced Accuracy
    c) MCC

19. ¿Cuál es el objetivo del ajuste de parámetros en modelos predictivos?
    a) Maximizar el overfitting
    b) Optimizar el rendimiento sobre el conjunto de prueba
    c) Minimizar el error esperado sobre datos no vistos

20. ¿Qué problema puede aparecer si se reutilizan datos de validación para ajustar hiperparámetros?
    a) Fuga de datos (data leakage)
    b) Variación estocástica
    c) Estimación inversa

21. ¿Qué propiedad NO es obligatoria para una función de similaridad?
    a) Simetría
    b) Positividad
    c) Desigualdad triangular

22. ¿Cuál de las siguientes NO es una técnica de agrupamiento jerárquico?
    a) Single-link
    b) DBSCAN
    c) Complete-link

23. ¿Qué sucede si usamos la distancia euclídea en variables no normalizadas?
    a) Las variables con menor varianza dominan
    b) Se produce una reducción artificial de la dimensionalidad
    c) Las variables con mayor rango dominan

24. ¿Qué técnica de agrupamiento es más adecuada para detectar outliers?
    a) K-medoides
    b) DBSCAN
    c) K-means

25. ¿Qué distancia se adapta mejor al uso de variables categóricas?
    a) Manhattan
    b) Coseno
    c) Jaccard

26. ¿Cuál es la relación entre soporte y confianza en una misma regla?
    a) Son inversamente proporcionales
    b) La confianza nunca puede superar el soporte
    c) La confianza puede ser alta con soporte bajo

27. ¿Qué propiedad del soporte permite aplicar el principio Apriori?
    a) Transitividad
    b) Antisimetría
    c) Antimonotonicidad

28. ¿Qué indica un lift < 1 en una regla de asociación?
    a) Que los items son independientes
    b) Que la coocurrencia es mayor a lo esperado
    c) Que hay una relación negativa entre X e Y

29. ¿Qué ventaja tiene FP-Growth respecto a Apriori?
    a) Mayor número de reglas
    b) Requiere menos memoria
    c) Mejora la calidad del soporte

30. ¿Qué aspecto dificulta el descubrimiento de reglas en conjuntos grandes?
    a) El número de clases
    b) La cardinalidad del conjunto de transacciones
    c) La falta de etiquetas

---

# Examen 2


1. ¿Qué tipo de transformación podría generar un sesgo si se aplica antes de imputar valores ausentes?
   a) Discretización por cuantiles
   b) Normalización Z-score
   c) One-hot encoding

2. ¿Cuál de los siguientes métodos selecciona subconjuntos de características mediante evaluación secuencial?
   a) Mutual Information Ranking
   b) Sequential Forward Selection
   c) Recursive Feature Embedding

3. ¿Qué afirmación es **incorrecta** respecto al método de Mahalanobis?
   a) Tiene en cuenta la covarianza entre atributos
   b) Asume independencia entre variables
   c) Se ve afectado por la presencia de outliers

4. ¿Qué representa geométricamente una tasa de falsos positivos igual a 1 en el espacio ROC?
   a) El clasificador nunca se equivoca
   b) El clasificador etiqueta todo como clase positiva
   c) La especificidad es máxima

5. ¿Cuál de las siguientes no es una técnica válida para balancear un conjunto de datos?
   a) SMOTE
   b) Tomek Links
   c) Discretización jerárquica

6. ¿Qué propiedad matemática garantiza que el algoritmo Apriori puede hacer poda sin calcular todos los soportes?
   a) Transitividad de reglas
   b) Antimonotonicidad del soporte
   c) Normalidad condicional

7. ¿Qué significa una confianza del 100% en una regla de asociación con soporte bajo?
   a) La regla es inútil porque no se aplica nunca
   b) La regla es universalmente cierta
   c) Puede existir sobreajuste debido a la baja frecuencia

8. ¿Qué técnica proporciona una evaluación casi insesgada del error si se dispone de pocos datos?
   a) Hold-out aleatorio
   b) Cross-validation estratificada
   c) Leave-one-out

9. ¿Qué métrica es más adecuada cuando hay un alto desequilibrio entre clases?
   a) Exactitud
   b) Balanced Accuracy
   c) MCC únicamente

10. ¿Cuál de los siguientes métodos de reducción de dimensionalidad puede **aumentar** la varianza explicada al añadir ruido?
    a) PCA
    b) t-SNE
    c) Autoencoders profundos no regulares

11. ¿Qué indica una varianza negativa en una transformación PCA aplicada a una matriz mal construida?
    a) El método PCA no converge
    b) La matriz de covarianzas no es semi-definida positiva
    c) Exceso de colinealidad entre componentes

12. ¿Qué propiedad permite que los clusters de DBSCAN no requieran conocer el número total de grupos?
    a) Topología de Voronoi
    b) Densidad local basada en ε
    c) Minimización de inercia intra-cluster

13. En un dendrograma de agrupamiento, cortar a una altura mayor implica:
    a) Obtener más grupos
    b) Obtener menos grupos
    c) No afecta al número de grupos

14. ¿Qué implica que una variable tenga una frecuencia del valor más común igual a 95% y solo 3 valores únicos?
    a) Es una variable ordinal
    b) Tiene varianza cercana a cero
    c) No tiene utilidad como predictor

15. ¿Qué representa el “lift” en una regla X→Y?
    a) El cociente entre confianza y soporte del consecuente
    b) El valor absoluto de la covarianza entre X e Y
    c) La probabilidad conjunta de X e Y

16. ¿Qué problema aparece al usar z-score con una variable con desviación estándar nula?
    a) Se transforma en una variable categórica
    b) Produce divisiones por cero
    c) Aumenta la dispersión

17. ¿Qué técnica convierte automáticamente atributos categóricos en múltiples dimensiones sin pérdida de información?
    a) Encoding binario ordinal
    b) Embeddings supervisados
    c) One-hot encoding

18. En la comparación de modelos, ¿cuándo se debe preferir el test de Wilcoxon a un test t?
    a) Cuando la muestra es grande y normal
    b) Cuando las diferencias no son simétricas ni normales
    c) Cuando hay más de 3 modelos

19. ¿Qué ocurre si el umbral de soporte mínimo en Apriori se fija muy bajo?
    a) Se obtienen solo las reglas más interesantes
    b) Aumenta el coste computacional exponencialmente
    c) Se pierden los itemsets más específicos

20. ¿Cuál de los siguientes NO es un criterio de evaluación basado en la matriz de confusión?
    a) F1-score
    b) Sensibilidad
    c) MSE

21. ¿Qué medida permite comparar la capacidad predictiva entre dos clasificadores con valores de clase probabilísticos?
    a) AUC
    b) Accuracy
    c) F-beta

22. ¿Qué sucede si se utilizan atributos fuertemente correlacionados en un modelo?
    a) El error de test siempre disminuye
    b) Aumenta la varianza del modelo
    c) Mejora la precisión debido a la redundancia

23. ¿Cuál es una desventaja del algoritmo FP-Growth frente a Apriori?
    a) Requiere demasiada memoria en ciertos casos
    b) Tiene una menor precisión
    c) No puede calcular la confianza

24. ¿Qué ocurre si aplicamos t-SNE a un conjunto de datos con escalas heterogéneas no normalizadas?
    a) La estructura global se preserva mejor
    b) Los resultados tienden a agrupar por magnitud
    c) t-SNE realiza normalización automáticamente

25. ¿Qué implica que un modelo tenga alta sensibilidad y baja especificidad?
    a) Clasifica correctamente muchos negativos
    b) Falla en detectar positivos
    c) Tiene muchos falsos positivos

26. ¿Cuál es una razón válida para eliminar atributos con baja entropía?
    a) Tienen alta importancia en árboles de decisión
    b) Tienen poco poder discriminativo
    c) Introducen no linealidad en SVMs

27. ¿Cuál de las siguientes distancias **no** cumple la desigualdad triangular?
    a) Manhattan
    b) Euclídea
    c) Distancia del coseno

28. ¿Qué ocurre si se incluye un atributo con un solo valor en todo el dataset?
    a) Aumenta el sesgo del modelo
    b) No aporta información y puede causar errores numéricos
    c) Mejora la capacidad de generalización

29. ¿Qué relación es siempre cierta entre AUC y Accuracy?
    a) AUC ≥ Accuracy
    b) No existe relación directa entre ambas
    c) Accuracy es el doble del AUC

30. ¿Qué representa el punto (0,0) en una curva ROC?
    a) El clasificador acierta todo
    b) El clasificador nunca predice positivos
    c) Todos los ejemplos positivos se clasifican correctamente

---

# Examen 3

**1.** ¿Cuál de las siguientes características es propia de una red GRU y no de una LSTM?

a) Las GRU tienen celdas de estado separadas para entrada y olvido.
b) Las GRU combinan el estado oculto y el de la celda en una sola representación.
c) Las GRU utilizan una compuerta de control para cada dimensión de entrada.

**2.** ¿Qué función realiza una capa *Flatten* en una CNN?

a) Convierte un mapa de activación 2D en un vector 1D.
b) Reduce la profundidad de los filtros convolucionales.
c) Aplica una transformación no lineal sobre los píxeles.

**3.** ¿Qué ventaja tienen las funciones de activación ReLU sobre la sigmoide en redes profundas?

a) Su derivada es constante.
b) Evitan el problema de *exploding gradients*.
c) Reducen la probabilidad de *vanishing gradients*.

**4.** ¿Qué representa el *padding* en una capa convolucional?

a) El número de filtros aplicados.
b) La cantidad de ceros añadidos al borde de la imagen.
c) El tamaño del *stride*.

**5.** ¿Por qué se usa *Backpropagation Through Time* (BPTT) en redes RNN?

a) Porque los RNN son no diferenciables sin él.
b) Para propagar errores hacia capas recurrentes en el tiempo.
c) Para evitar el uso de funciones de activación en las salidas.

**6.** En el entrenamiento de una red convolucional, ¿qué función tiene la capa *MaxPooling*?

a) Aumentar la dimensionalidad de salida.
b) Retener la media de cada región.
c) Extraer la característica más relevante en una región.

**7.** En una red LSTM, ¿cuál es la función de la compuerta de salida?

a) Regular cuánto del estado de la celda se transfiere al estado oculto.
b) Determinar cuánta información nueva entra en la celda.
c) Borrar el estado oculto anterior.

**8.** ¿Cuál de los siguientes elementos está presente en una arquitectura CNN clásica?

a) Capas recurrentes.
b) Capas convolucionales y de agrupación.
c) Compuertas de activación tipo "reset".

**9.** ¿Cuál es el objetivo principal de la compuerta de olvido en una LSTM?

a) Eliminar información irrelevante de la celda de memoria.
b) Añadir ruido gaussiano a los datos de entrada.
c) Reducir el número de parámetros.

**10.** En una red neuronal multicapa (MLP), ¿por qué es importante la función de activación?

a) Porque transforma la red en una función lineal.
b) Porque permite el aprendizaje no lineal.
c) Porque ajusta el número de parámetros.

**11.** ¿Qué ocurre si no se utiliza *padding* en una CNN?

a) La imagen de salida tiene el mismo tamaño.
b) La red es más rápida pero menos precisa.
c) El tamaño de la salida disminuye tras cada convolución.

**12.** ¿Cuál es una desventaja clave del uso de RNN simples?

a) Consumen demasiada memoria.
b) Son muy eficientes en el modelado de dependencias a largo plazo.
c) Sufren de desvanecimiento del gradiente.

**13.** ¿Cuál es el propósito principal de las redes convolucionales?

a) Modelar secuencias temporales.
b) Detectar relaciones espaciales en imágenes.
c) Generar números pseudoaleatorios.

**14.** ¿Qué tipo de problema se modela mejor con una red recurrente?

a) Clasificación de imágenes.
b) Predicción de series temporales.
c) Reducción de dimensionalidad.

**15.** ¿Qué ocurre en una LSTM si todas las compuertas están abiertas?

a) Se conserva todo el contenido de la celda sin modificación.
b) Se pierde la información temporal previa.
c) No hay aprendizaje.

**16.** ¿Qué representa el estado oculto en una RNN?

a) El vector de salida final.
b) La representación del contexto acumulado hasta el paso actual.
c) La activación de la función sigmoide.

**17.** ¿Cuál de estas redes es más eficiente para textos largos?

a) RNN clásica.
b) LSTM.
c) Red Perceptrón.

**18.** ¿Qué mejora introducen las GRU respecto a las RNN tradicionales?

a) El uso de capas convolucionales.
b) Mecanismos de atención.
c) Mejor manejo de dependencias largas.

**19.** ¿Cuál es una diferencia fundamental entre una red convolucional y una red MLP?

a) Las CNNs tienen más funciones de activación.
b) Las CNNs trabajan con entradas secuenciales.
c) Las CNNs comparten pesos a través del espacio.

**20.** ¿Qué parámetro en una CNN afecta directamente al tamaño de la salida?

a) Número de filtros.
b) Stride.
c) Número de capas.

**21.** ¿Qué ventaja tienen las convoluciones 1D sobre las 2D en ciertos problemas?

a) Menor tiempo de entrenamiento y más capacidad para secuencias.
b) Capturan mejor las relaciones espaciales en imágenes.
c) Requieren menos regularización.

**22.** ¿En qué caso una red recurrente bidireccional es útil?

a) Cuando los datos tienen mucho ruido.
b) Cuando la predicción depende tanto del pasado como del futuro.
c) Cuando se entrena sin etiquetas.

**23.** ¿Qué significa que una red tenga *estado*?

a) Que depende del hardware.
b) Que mantiene memoria de entradas anteriores.
c) Que sus pesos son aleatorios.

**24.** ¿Cuál de estas funciones se puede usar como función de pérdida en clasificación multiclase?

a) MSE (Error Cuadrático Medio).
b) Entropía cruzada.
c) LogSoftmax.

**25.** ¿Qué ocurre si se utiliza *stride* alto en una capa convolucional?

a) La red es más precisa.
b) Se aumenta la resolución de la salida.
c) Se reduce el tamaño de la salida.

**26.** ¿Cuál es una desventaja común de las redes recurrentes?

a) Consumen menos memoria que las convolucionales.
b) No pueden modelar dependencias temporales.
c) Su entrenamiento es más complejo por el retropropagado temporal.

**27.** ¿Cuál es el propósito de usar activación softmax en la última capa?

a) Normalizar la salida a una distribución de probabilidad.
b) Prevenir el sobreajuste.
c) Convertir valores negativos a positivos.

**28.** ¿Qué característica tiene una red neuronal profunda?

a) Tiene un único nodo de salida.
b) Tiene múltiples capas ocultas entre entrada y salida.
c) Tiene solo una capa de activación.

**29.** ¿Cuál es la principal limitación del uso de tanh como función de activación?

a) Su rango no es finito.
b) Puede causar desvanecimiento del gradiente.
c) No es diferenciable.

**30.** ¿Qué tipo de arquitectura es más adecuada para clasificación de texto?

a) CNN
b) RNN
c) GAN

---

# Examen 4


#### **Preguntas**

**1.** ¿Qué técnica evita que las variables con mayor escala dominen una distancia euclídea?

a) Discretización uniforme
b) Normalización min-max
c) PCA

---

**2.** ¿Qué condición debe cumplir un método de reducción basado en varianza acumulada?

a) Que todos los componentes tengan autovalores negativos
b) Que la varianza total explicada sea menor al 50%
c) Que los primeros componentes expliquen la mayoría de la varianza

---

**3.** ¿Qué métrica es más sensible a errores en clases minoritarias?

a) Accuracy
b) F1-Score
c) Specificity

---

**4.** ¿Qué representa un Lift = 1 en una regla de asociación?

a) Independencia entre antecedente y consecuente
b) Fuerte correlación positiva
c) Máxima confianza

---

**5.** ¿Cuál es una desventaja clave de las RNN simples?

a) Su estructura no permite el cálculo de derivadas
b) No pueden aprender funciones lineales
c) Tienen dificultades con dependencias largas

---

**6.** ¿Qué ocurre si eliminamos atributos con muy baja entropía?

a) Perdemos variables predictoras útiles
b) Mejoramos la eficiencia sin perder capacidad predictiva
c) Incrementamos la multicolinealidad

---

**7.** ¿Qué significa que una regla tenga soporte alto pero baja confianza?

a) Que es irrelevante
b) Que ocurre frecuentemente, pero no es fiable
c) Que puede tener Lift > 1

---

**8.** ¿Cuál de las siguientes técnicas genera vectores de menor dimensión con reconstrucción aproximada?

a) Normalización
b) PCA
c) Discretización por frecuencia

---

**9.** ¿Qué tipo de problema modela mejor una red CNN?

a) Audio en tiempo real
b) Imágenes con estructura espacial
c) Series temporales

---

**10.** ¿Qué ocurre si el valor de k en k-means es muy grande?

a) El clustering puede volverse más robusto
b) Se genera sobreajuste y clusters redundantes
c) Mejora el silhouette score automáticamente

---

**11.** ¿Qué estrategia de validación reduce el sobreajuste más eficazmente?

a) Hold-out
b) K-Fold Cross Validation
c) Validación con test duplicado

---

**12.** ¿Qué propiedad tiene la distancia de Jaccard?

a) Requiere variables numéricas
b) Es adecuada para atributos categóricos o binarios
c) Siempre cumple la desigualdad triangular

---

**13.** ¿Qué técnica permite imputar valores faltantes manteniendo la estructura de correlación?

a) Media por atributo
b) Imputación por KNN
c) Eliminación por fila

---

**14.** ¿Qué ocurre si se aplica PCA a variables no estandarizadas?

a) Las variables con más varianza dominarán la transformación
b) El resultado es equivalente a usar t-SNE
c) Se obtiene una matriz de correlación

---

**15.** ¿Cuál es el uso principal de la compuerta de olvido en LSTM?

a) Eliminar pesos irrelevantes
b) Resetear completamente el estado oculto
c) Borrar información no útil de la celda

---

**16.** ¿Qué representa una tasa de Falsos Positivos (FPR) alta?

a) Muchos negativos se clasifican como positivos
b) Muchos positivos no se detectan
c) El modelo tiene alta sensibilidad

---

**17.** ¿Qué ventaja tienen las GRU respecto a LSTM?

a) Menor complejidad computacional
b) Mejores resultados en todos los datasets
c) Mayor profundidad de representación

---

**18.** ¿Qué se maximiza en el agrupamiento jerárquico con enlace completo?

a) Densidad entre grupos
b) Distancia máxima entre puntos de distintos clusters
c) Similitud coseno

---

**19.** ¿Qué representa el estado oculto en una red recurrente?

a) El vector de activación de salida
b) El historial acumulado hasta el instante actual
c) El sesgo de la red

---

**20.** ¿Qué significa un valor de confianza del 90% en una regla de asociación?

a) Que se cumple en el 90% de las veces que aparece el antecedente
b) Que X e Y ocurren juntas el 90% del tiempo
c) Que el soporte total es 0.9

---

**21.** ¿Qué error se comete si un modelo clasifica todos los ejemplos como clase mayoritaria?

a) Falso positivo
b) Sobreajuste
c) Alta exactitud pero bajo recall

---

**22.** ¿Qué hace la técnica SMOTE?

a) Elimina ruido de clases minoritarias
b) Sobremuestrea artificialmente con instancias sintéticas
c) Reduce el número de variables redundantes

---

**23.** ¿Qué se interpreta si una variable tiene varianza cero?

a) Es altamente predictiva
b) No aporta información
c) Es mejor discretizarla

---

**24.** ¿Qué técnica transforma variables categóricas sin orden?

a) Ordinal encoding
b) One-hot encoding
c) PCA

---

**25.** ¿Qué propiedad del PCA lo hace útil para compresión?

a) Reduce número de muestras
b) Proyecta datos maximizando varianza
c) Funciona bien con datos categóricos

---

**26.** ¿Qué sucede si se entrena una CNN con imágenes mal alineadas?

a) Se reduce el overfitting
b) Aumenta la capacidad de generalización
c) Se pierde precisión en patrones espaciales

---

**27.** ¿Qué tipo de regularización es Dropout?

a) L2
b) Basada en apagado aleatorio de neuronas
c) Normalización batch

---

**28.** ¿Qué métrica evalúa la capacidad de ordenamiento de un modelo binario?

a) Accuracy
b) AUC
c) F1

---

**29.** ¿Qué implica la antimonotonicidad del soporte?

a) Que si un itemset es frecuente, todos sus subconjuntos también
b) Que el soporte crece al aumentar la longitud del itemset
c) Que no se puede podar ningún candidato

---

**30.** ¿Qué técnica permite visualizar agrupamientos en 2D preservando relaciones locales?

a) PCA
b) t-SNE
c) SVD

---

**31.** ¿Qué propiedad NO es obligatoria para una función de similaridad?

a) Simetría
b) Identidad
c) Desigualdad triangular

---

**32.** ¿Cuál es el resultado de una capa de convolución con stride alto?

a) Menor tamaño de salida
b) Mayor profundidad
c) Reducción del número de filtros

---

**33.** ¿Qué método puede reducir el riesgo de overfitting en modelos complejos?

a) Usar más clases
b) Dropout
c) No aplicar activación

---

**34.** ¿Qué efecto tiene la normalización Z-score sobre una variable?

a) Escala los valores entre 0 y 1
b) Centra y ajusta la varianza
c) Elimina outliers

---

**35.** ¿Qué parámetro NO se puede optimizar con grid search?

a) Tipo de función de activación
b) Número de atributos en el dataset
c) Profundidad de una red

---

**36.** ¿Qué ocurre si en una LSTM la compuerta de entrada está cerrada?

a) No se incorpora nueva información a la celda
b) Se reinicia el estado
c) Se pierde el gradiente

---

**37.** ¿Qué indica un valor de MCC cercano a 0?

a) Clasificación aleatoria
b) Precisión perfecta
c) Sensibilidad alta

---

**38.** ¿Qué componente de una red neuronal tiene la función de aprendizaje?

a) Los pesos
b) La entrada
c) La función de pérdida

---

**39.** ¿Qué técnica se puede aplicar antes de clustering para mejorar resultados?

a) Regresión logística
b) Reducción de dimensionalidad
c) Reajuste de etiquetas

---

**40.** ¿Qué ocurre si un modelo tiene alta varianza?

a) Tiene baja capacidad de aprendizaje
b) Tiene sobreajuste
c) Tiene bajo sesgo

---

Cuando tengas tus respuestas (ej. `a, b, b, c, _, a, ...`), envíamelas y te calcularé la nota con la penalización correspondiente, además de devolverte la tabla explicativa completa.

