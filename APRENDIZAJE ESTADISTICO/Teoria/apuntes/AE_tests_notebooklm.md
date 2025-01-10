1. ¿Cuál es el objetivo principal del método de subset selection en regresión?
    - a) Aumentar la cantidad de predictores en el modelo.
    - b) Identificar el mejor subconjunto de predictores que minimiza el error de predicción.
    - c) Aumentar la complejidad del modelo.
    - d) Reducir el tiempo de entrenamiento del modelo.

<details>
  <summary>Ver respuesta</summary>
  b - Identificar el mejor subconjunto de predictores que minimiza el error de predicción.
</details>

---

2. En el contexto del Análisis de Componentes Principales (PCA), ¿qué representan los loadings?
    - a) Los valores propios de la matriz de covarianza.
    - b) Los vectores propios de la matriz de correlación.
    - c) La varianza explicada por cada componente principal.
    - d) Los datos estandarizados.

<details>
  <summary>Ver respuesta</summary>
  b - Los vectores propios de la matriz de correlación.
</details>

---

3. ¿Cuál es la principal diferencia entre PCA y PLS (Partial Least Squares)?
    - a) No hay diferencia alguna.
    - b) PCA busca maximizar la varianza de los datos, mientras que PLS busca maximizar la covarianza entre las variables predictoras y la variable respuesta.
    - c) PCA es un método supervisado, mientras que PLS es un método no supervisado.
    - d) PCA se puede utilizar en regresión, el PLS no.

<details>
  <summary>Ver respuesta</summary>
  b - PCA busca maximizar la varianza de los datos, mientras que PLS busca maximizar la covarianza entre las variables predictoras y la variable respuesta.
</details>

---

4. En el contexto de los árboles de decisión, ¿qué significa el término "separación binaria recursiva"?
    - a) Que el árbol se construye dividiendo repetidamente los datos en múltiples grupos para maximizar la cantidad de clases.
    - b) Que utiliza operadores binarios para dividir los datos en dos conjuntos iguales en cada paso.
    - c) Que en cada nodo se realiza una partición binaria del conjunto de ejemplos aplicando repetidamente el mismo criterio de división.
    - d) Que todos los nodos del árbol se dividen recursivamente en ramas múltiples, no necesariamente binarias.

<details>
  <summary>Ver respuesta</summary>
  c - Que en cada nodo se realiza una partición binaria del conjunto de ejemplos aplicando repetidamente el mismo criterio de división.
</details>

---

5. ¿Qué representa el índice Gini en la construcción de árboles de decisión?
    - a) Una fórmula para calcular la profundidad máxima que debe tener un árbol de decisión.
    - b) Una medida de la impureza de un nodo, donde valores más bajos indican mayor homogeneidad en las clases.
    - c) Una métrica que calcula la distancia promedio entre las observaciones dentro de un nodo.
    - d) Una medida que garantiza que todos los nodos tengan el mismo número de ejemplos.

<details>
  <summary>Ver respuesta</summary>
  b - Una medida de la impureza de un nodo, donde valores más bajos indican mayor homogeneidad en las clases.
</details>

---

6. ¿Cuál es el objetivo principal del algoritmo de costo-complejidad aplicado a árboles de decisión?
    - a) Maximizar el número de nodos terminales para aumentar la capacidad predictiva del árbol.
    - b) Reducir el error de entrenamiento al construir un árbol completamente desarrollado sin restricciones.
    - c) Garantizar que todos los nodos del árbol tengan el mismo número de ejemplos para equilibrar las particiones.
    - d) Encontrar el balance entre precisión y simplicidad, seleccionando el subárbol que minimiza el sobreajuste a los datos.

<details>
  <summary>Ver respuesta</summary>
  d - Encontrar el balance entre precisión y simplicidad, seleccionando el subárbol que minimiza el sobreajuste a los datos.
</details>

---

7. ¿Cuál es el propósito principal de las observaciones "out-of-bag" (OOB) en el método de bagging?
    - a) Aumentar la varianza del modelo al excluir datos del entrenamiento.
    - b) Estimar el error de prueba del modelo bagged sin necesidad de conjuntos de prueba adicionales.
    - c) Reducir el número de árboles necesarios en el modelo bagged.
    - d) Identificar las observaciones que más contribuyen al sesgo del modelo.

<details>
  <summary>Ver respuesta</summary>
  b - Estimar el error de prueba del modelo bagged sin necesidad de conjuntos de prueba adicionales.
</details>

---

8. ¿Qué diferencia a los bosques aleatorios (random forests) del método de bagging?
    - a) Los bosques aleatorios construyen árboles utilizando la totalidad de los predictores en cada división del árbol.
    - b) En los bosques aleatorios, los árboles se construyen utilizando subconjuntos aleatorios de predictores en cada división, reduciendo la correlación entre los árboles.
    - c) Los bosques aleatorios utilizan menos árboles que el bagging para reducir el tiempo de cálculo.
    - d) El bagging selecciona predictores fijos en cada división, mientras que los bosques aleatorios utilizan todos los predictores disponibles.

<details>
  <summary>Ver respuesta</summary>
  b - En los bosques aleatorios, los árboles se construyen utilizando subconjuntos aleatorios de predictores en cada división, reduciendo la correlación entre los árboles.
</details>

---

9. ¿Cuál es una característica clave del método de boosting al aplicarse a árboles de decisión?
    - a) Cada árbol en boosting corrige los errores cometidos por los árboles previamente construidos.
    - b) Los árboles se construyen utilizando conjuntos de datos generados aleatoriamente e independientes entre sí.
    - c) Boosting combina los árboles generados utilizando la media de sus predicciones.
    - d) Los árboles en boosting son siempre más grandes que los utilizados en bagging.

<details>
  <summary>Ver respuesta</summary>
  a - Cada árbol en boosting corrige los errores cometidos por los árboles previamente construidos.
</details>

---

10. En el contexto de las Máquinas de Vectores Soporte (SVM), ¿qué función tiene un kernel?
     - a) Toma como argumentos la máquina de vectores soporte y un punto del espacio. Cuantifica la distancia ortogonal entre la frontera de decisión inducida por la máquina y el punto.
     - b) Toma como argumentos la máquina de vectores soporte y un punto del espacio. Cuantifica la distancia mínima entre la frontera de decisión inducida por la máquina y el punto.
     - c) Toma como argumentos dos puntos del espacio de características. Cuantifica la similitud entre los puntos.
     - d) Ninguna de las anteriores.

<details>
  <summary>Ver respuesta</summary>
  c - Toma como argumentos dos puntos del espacio de características. Cuantifica la similitud entre los puntos.
</details>

---

11. En SVM, ¿qué representan las variables de holgura ϵi?
     - a) Si ϵi > 0, entonces el ejemplo i-ésimo está en el lado correcto del margen.
     - b) Si ϵi > 1, entonces el ejemplo i-ésimo está en el lado correcto del hiperplano.
     - c) Si ϵi > 0, entonces el ejemplo i-ésimo está en el lado incorrecto del margen.
     - d) Ninguna de las anteriores.

<details>
  <summary>Ver respuesta</summary>
  c - Si ϵi > 0, entonces el ejemplo i-ésimo está en el lado incorrecto del margen.
</details>

---

12. ¿Cuál es la función principal de las funciones de activación en redes neuronales?
     - a) Cumplen una función de normalización de los datos, normalizando los datos de entrada bien en [−1, 1] bien en.
     - b) Dotan de comportamiento no lineal a las redes neuronales.
     - c) Más conocidas son las de tangente hiperbólica, sigmoidal y dropout.
     - d) Ninguna de las anteriores.

<details>
  <summary>Ver respuesta</summary>
  b - Dotan de comportamiento no lineal a las redes neuronales.
</details>

---

13. ¿Cuál es el propósito de la función softmax en redes neuronales?
     - a) Se utiliza en problemas de clasificación, en los nodos de salida de la red, para distribuir la probabilidad de la observación de pertenecer a cada clase.
     - b) Se utiliza en la activación de las capas ocultas para distribuir el error equitativamente entre todos los nodos.
     - c) Es una alternativa eficiente a la función sigmoidal, arcotangente y ReLU, en las funciones de activación.
     - d) Ninguna de las anteriores es cierta.

<details>
  <summary>Ver respuesta</summary>
  a - Se utiliza en problemas de clasificación, en los nodos de salida de la red, para distribuir la probabilidad de la observación de pertenecer a cada clase.
</details>

---

14. En una red neuronal recurrente, ¿qué función cumple la matriz de pesos U?
     - a) La matriz de pesos W se encarga de procesar el token a la entrada, la matriz U se encarga de gestionar la recurrencia y la matriz B de cómo producir una salida para ese token.
     - b) La matriz de pesos W se encarga de codificar el token a la entrada en forma de embedding, la matriz U se encarga de asociarlo con los tokens ya vistos, la matriz B con los tokens que quedan por procesar.
     - c) La matriz de pesos W se encarga de codificar el token a la entrada en forma de embedding, la matriz U se encarga de gestionar la recurrencia, la matriz B se encarga de asociar el token a la entrada con los tokens que quedan por procesar.
     - d) La matriz de pesos W se modifica a cada token mediante gradiente descendente, la matriz U se mantiene fija después de unas pocas épocas de entrenamiento y la matriz B solo se actualiza una vez procesado cada ejemplo por completo.

<details>
  <summary>Ver respuesta</summary>
  c - La matriz de pesos W se encarga de codificar el token a la entrada en forma de embedding, la matriz U se encarga de gestionar la recurrencia, la matriz B se encarga de asociar el token a la entrada con los tokens que quedan por procesar.
</details>

---

15. ¿Qué indica el vector gradiente en el contexto de las redes neuronales?
     - a) Nos marca la dirección de mayor variación de los pesos.
     - b) Nos marca la dirección de mayor variación de los ejemplos con respecto a los pesos.
     - c) Nos marca la dirección de mayor variación de la función de error de la red neuronal.
     - d) Ninguna de las otras tres es cierta.

<details>
  <summary>Ver respuesta</summary>
  c - Nos marca la dirección de mayor variación de la función de error de la red neuronal.
</details>

---

16. ¿Cuál es la función de la técnica de dropout en redes neuronales?
     - a) Es una alternativa a la regularización L1 y L2 y se incluye en la función de pérdida.
     - b) Se debe usar con cuidado porque añade una gran cantidad de parámetros a la red.
     - c) Es un complemento a la regularización L1 y L2 y se incluye como capa en la red neuronal.
     - d) Es conveniente porque no incorpora hiperparámetros al proceso de búsqueda del mejor modelo.

<details>
  <summary>Ver respuesta</summary>
  c - Es un complemento a la regularización L1 y L2 y se incluye como capa en la red neuronal.
</details>

---

17. ¿Cuál de las siguientes afirmaciones sobre el uso de la distancia Euclidiana como métrica es correcta?
     - a) No requiere normalizar los predictores.
     - b) Es importante normalizar los predictores cuando se utiliza la distancia Euclidiana como métrica para asegurar que las variables con escalas diferentes no dominen la distancia calculada.
     - c) La normalización garantiza que las distancias siempre serán menores a 1.
     - d) La distancia Euclidiana no funciona si los datos no están normalizados.

<details>
  <summary>Ver respuesta</summary>
  b - Es importante normalizar los predictores cuando se utiliza la distancia Euclidiana como métrica para asegurar que las variables con escalas diferentes no dominen la distancia calculada.
</details>

---

18. ¿Qué es el RSE (Residual Standard Error) en regresión lineal?
     - a) El error cuadrático medio.
     - b) El coeficiente de correlación.
     - c) Una medida de la falta de ajuste del modelo, que depende de las unidades de Y.
     - d) La proporción de varianza explicada por el modelo.

<details>
  <summary>Ver respuesta</summary>
  c - Una medida de la falta de ajuste del modelo, que depende de las unidades de Y.
</details>

---

19. ¿Qué representa el R² en un modelo de regresión?
     - a) El error cuadrático medio.
     - b) La desviación estándar de los residuos.
     - c) La proporción de la variabilidad total de la variable dependiente explicada por el modelo.
     - d) La suma de los residuos al cuadrado.

<details>
  <summary>Ver respuesta</summary>
  c - La proporción de la variabilidad total de la variable dependiente explicada por el modelo.
</details>

---

20. ¿Qué es la validación cruzada?
     - a) Un método para aumentar el tamaño del conjunto de datos.
     - b) Un método para estimar el error de prueba de un modelo mediante la partición de los datos en subconjuntos de entrenamiento y validación.
     - c) Un método para seleccionar las variables más importantes en un modelo.
     - d) Un método para reducir la varianza de los estimadores de los parámetros.

<details>
  <summary>Ver respuesta</summary>
  b - Un método para estimar el error de prueba de un modelo mediante la partición de los datos en subconjuntos de entrenamiento y validación.
</details>

---

21. ¿Cuál es el objetivo principal del método bootstrap?
     - a) Reducir el sesgo de un estimador.
     - b) Aumentar la precisión de las predicciones del modelo.
     - c) Estimar la variabilidad de un estimador mediante el remuestreo de los datos.
     - d) Seleccionar el mejor modelo entre varios candidatos.

<details>
  <summary>Ver respuesta</summary>
  c - Estimar la variabilidad de un estimador mediante el remuestreo de los datos.
</details>

---

22. ¿Qué es el AIC (Akaike Information Criterion)?
     - a) Una medida de la bondad de ajuste de un modelo, que siempre es mayor que 0.
     - b) Un criterio que penaliza la complejidad del modelo al tiempo que recompensa su ajuste a los datos.
     - c) Una medida que indica el porcentaje de la varianza explicada por el modelo.
     - d) Una medida del error de predicción de un modelo.

<details>
  <summary>Ver respuesta</summary>
  b - Un criterio que penaliza la complejidad del modelo al tiempo que recompensa su ajuste a los datos.
</details>

---

23. En el contexto de k-NN, ¿por qué es necesario normalizar los predictores?
     - a) Para asegurar que todas las variables tengan la misma escala y que no haya variables con valores más grandes que dominen la distancia.
     - b) Para evitar el sobreajuste del modelo.
     - c) Si los predictores están definidos en el espacio de los reales, la distancia Euclidiana es una buena opción y se requiere normalizar los predictores.
     - d) Para aumentar la velocidad de cálculo del algoritmo.

<details>
  <summary>Ver respuesta</summary>
  a - Para asegurar que todas las variables tengan la misma escala y que no haya variables con valores más grandes que dominen la distancia.
</details>

---

24. ¿Qué se entiende por embedding en el contexto de las redes neuronales recurrentes?
     - a) Una función de activación utilizada en la capa de salida.
     - b) Una representación vectorial de las palabras en un espacio de baja dimensión que captura relaciones semánticas.
     - c) Una técnica de regularización para evitar el sobreajuste.
     - d) Un tipo de red neuronal específica para el procesamiento de imágenes.

<details>
  <summary>Ver respuesta</summary>
  b - Una representación vectorial de las palabras en un espacio de baja dimensión que captura relaciones semánticas.
</details>

---

25. En el contexto de la regresión lineal, ¿qué significa que un predictor sea cualitativo?
     - a) Que toma valores numéricos continuos.
     - b) Que sus valores se pueden ordenar de forma ascendente o descendente.
     - c) Que toma valores en un conjunto discreto y no ordenado.
     - d) Que su efecto sobre la variable respuesta siempre es lineal.

<details>
  <summary>Ver respuesta</summary>
  c - Que toma valores en un conjunto discreto y no ordenado.
</details>