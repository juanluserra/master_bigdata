# Guía de Estudio de Aprendizaje Estadístico

## 1. Fundamentos del Aprendizaje Estadístico

### Aprendizaje Supervisado
- Problemas de regresión y clasificación.
- Construcción de modelos predictivos basados en predictores (X).

### Modelos Paramétricos vs. Flexibles
- Modelos lineales y splines.
- Evaluación de precisión usando conjuntos de prueba.

### Evaluación del Modelo
- Error cuadrático medio (MSE) para regresión.
- Clasificadores para problemas de clasificación.

### Comprensión y Objetivos
- Predicción precisa, identificación de variables importantes y evaluación de calidad.

### Aprendizaje no supervisado
- Identificación de patrones sin variable de resultado.

## 2. Árboles de Decisión

### Conceptos Básicos
- Segmentación del espacio del predictor.
- Aplicación en regresión y clasificación.

### Construcción del Árbol
- División del espacio del predictor en rectángulos.

### Poda de Árboles
- Mejora de la generalización mediante poda.

### Árboles de Clasificación
- Uso de tasa de error, índice Gini y entropía.

### Ventajas y Desventajas
- Interpretabilidad y manejo de predictores cualitativos.

## 3. Métodos de Conjunto: Bagging, Random Forests y Boosting

### Bagging (Bootstrap Aggregating)
- Reducción de varianza mediante remuestreo.

### Random Forests
- Selección aleatoria de predictores en cada división.

### Boosting
- Ajuste de árboles pequeños a los residuos del modelo.

### Consideraciones
- Mejora de precisión a cambio de pérdida de interpretabilidad.

## 4. Regresión Lineal

### Modelo Básico
- Predicción de una variable dependiente usando una ecuación lineal.

### Estimación por Mínimos Cuadrados
- Minimización de la suma de los cuadrados de los residuos.

### Evaluación de la Precisión de los Coeficientes
- Error estándar, intervalos de confianza y pruebas de hipótesis.

### Precisión del Modelo
- Error estándar residual (RSE) y R².

### Regresión Lineal Múltiple
- Extensión a múltiples predictores.

### Selección de Variables
- Métodos de selección de predictores importantes.

### Interacciones
- Mejora del modelo mediante interacciones entre predictores.

### Efectos No Lineales
- Modelado de efectos no lineales mediante regresión polinómica.

## 5. Clasificación

### Conceptos Clave
- Predicción de una variable cualitativa.

### Regresión Logística
- Modelado de probabilidad de clase usando una función logística.

### Análisis Discriminante
- Uso de densidades de probabilidad para clasificar observaciones.

### Teorema de Bayes
- Cálculo de probabilidad de clase dada la evidencia.

### Umbrales de Decisión
- Ajuste del umbral de decisión para problemas de clasificación.

## 6. Métodos de Remuestreo

### Validación Cruzada
- Estimación del error de prueba mediante K-fold.

### Bootstrap
- Estimación de la variabilidad de un estimador mediante remuestreo.

## 7. Selección de Modelos

### Métodos de Selección
- Selección de subconjuntos, contracción y reducción de dimensiones.

### Selección de Subconjuntos
- Identificación de predictores relevantes.

### Contracción (Shrinkage)
- Reducción de varianza mediante contracción de coeficientes.

### Reducción de la Dimensión
- Transformación de predictores mediante PCA.

### Criterios de Selección
- Validación cruzada, Cp de Mallow, AIC, BIC y R² ajustado.

## 8. Máquinas de Vectores Soporte (SVM)

### Clasificación Binaria
- Búsqueda de un hiperplano que separe las clases.

### Datos No Separables Linealmente
- Uso de clasificadores de margen blando.

### Kernels
- Expansión del espacio de variables para problemas no lineales.

### Selección del Kernel
- Optimización del kernel mediante validación cruzada.

## 9. K-Nearest Neighbors (KNN)

### Método Libre de Modelo
- Clasificación y regresión sin fase de aprendizaje.

### Clasificación y Regresión
- Uso de la regla del clasificador de Bayes.

### Distancia Euclídea
- Localización de puntos más próximos.

### Flexibilidad
- Eficiencia en fronteras de decisión irregulares.

### Algoritmo Baseline
- Funcionamiento razonable sin demasiados ajustes.

### Alta Dimensionalidad
- Desempeño deficiente en problemas de alta dimensionalidad.

### Importancia de la Validación Cruzada
- Estimación de K.

## 10. Redes Neuronales y Deep Learning

### Redes Neuronales
- Modelos no lineales con funciones de activación en capas ocultas.

### Deep Learning
- Redes neuronales con muchas capas para grandes conjuntos de datos.

### Ejemplo MNIST
- Clasificación de dígitos manuscritos.

### Clasificación de Documentos
- Representación de documentos y comparación de modelos.

### Redes Neuronales Recurrentes (RNN)
- Modelado de datos secuenciales.

### Word Embeddings
- Reducción de dimensionalidad para RNN.

### Series de Tiempo
- Predicción de series temporales mediante RNN.

### Entrenamiento
- Uso de descenso de gradiente estocástico (SGD).

### Sobreajuste y Double Descent
- Fenómeno de "doble descenso" en modelos complejos.

### Software
- Librerías como Tensorflow y PyTorch.

## 11. Análisis de Componentes Principales (PCA)

### Conceptos Básicos
- Reducción de dimensionalidad mediante combinaciones lineales.

### Eigenvalores y Eigenvectores
- Determinación de direcciones de máxima varianza.

### Componentes Principales
- Identificación de direcciones de manera no supervisada.

### Limitaciones de PCA
- No garantiza mejores predicciones de la respuesta.

