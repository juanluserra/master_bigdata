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
