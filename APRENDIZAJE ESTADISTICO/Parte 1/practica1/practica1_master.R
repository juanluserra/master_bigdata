## PRACTICA 1 - AE - IntroducciÃ³n a RStudio

## 2024-Septiembre


### Parte de este documento es de: Lab: Introduction to R -- Chapter 2 #

### Comandos bÃ¡sicos:
x <- c(1, 3, 2, 5)
x
class(x)

ls() ## lista lo que se ha definido.
rm(x) ## remove, borra.

y <- seq(from = 2, length = 10, by = 2)
y
## Para obtener sublistas
y[2]
y[2:4]
## Para eliminar por ejemplo la entrada nÃºmero 2:
y[-2]
y # Cuidado, "y" no varÃ­a
y[-c(1, 3)]
y
##  Si queremos listas de numeros naturales de uno en uno:
1:10

## MÃ¡s posibilidades
x <- seq(from = 1, to = 10, length = 6)
x
class(x)
x <- seq(-pi, pi, length = 50)
x
## Si tengo dos listas con misma longitud, es muy facil crear nuevas
## listas haciendo operaciones con ambas:
x <- c(1, 6, 2)
y <- c(1, 4, 3)
x + y
x * y
x^y
y / x


### MATRICES
?matrix
x <- matrix(data = c(1, 2, 3, 4), nrow = 2, ncol = 2)
x

x <- matrix(c(1, 2, 3, 4), 2, 2)
x

matrix(c(1, 2, 3, 4), 2, 2, byrow = TRUE)

sqrt(x)

x^2 ## Cuidado, esto no es la multiplicaciÃ³n de matrices

## MultiplicaciÃ³n de matrices
a <- matrix(c(1, 6, 4, 3), nrow = 2, ncol = 2)
a
b <- matrix(c(1, 0, 2, 8), nrow = 2, ncol = 2)
b
a * b
a %*% b

######################################
### GENERAR RANDOM DATA
## Ejemplo: datos que siguen una distribuciÃ³n normal N(0,1):
x <- rnorm(50)
x
y <- x + rnorm(50, mean = 50, sd = .1)

# calculamos el coeficiente de correlaciÃ³n (muestral) de Pearson
# (coseno del Ã¡ngulo que forman datosX-media,datosY-media)
cor(x, y)


### Fijar semilla.
rnorm(50) # estas dos Ã³rdenes seguidas dan datos diferentes, como es de esperar
rnorm(50)

# si fijamos la semilla, fijamos el punto de partida para calcular
# nÃºmeros pseudoaleatorios, con lo cual se obtienen los mismos datos
set.seed(1303)
rnorm(50)
set.seed(1303)
rnorm(50)

# ojo:
set.seed(1303)
rnorm(50)
rnorm(50) # ya no es igual.


###############################################################
### Carga de datos (Loading Data) y ExploraciÃ³n de datos ######
###############################################################

## En las prÃ¡cticas, se cargarÃ¡n datos de ficheros csv que deberÃ©is descargar del repositorio.

Auto <- read.csv("APRENDIZAJE ESTADISTICO/data/Auto.csv")

dim(Auto)

## TambiÃ©n desde el menÃº "File" --> "Import Data Set"


## InformaciÃ³n sobre la base de datos: https://rdrr.io/cran/ISLR/man/Auto.html
## AclaraciÃ³n: MPG ( â€œmiles per gallonâ€):
## distancia en millas que un coche puede conducir con un galÃ³n de gasolina

## Para verlos por pantalla, fÃ­jaos en el panel Environment.
## Se puede utilizar View pero se debe desactivar si luego se va a realizar
## un pdf del script.

# View(Auto)

## Importante: na.omit borra las filas donde faltan datos.
Auto <- na.omit(Auto)

class(Auto) # quÃ© es Auto: una matriz de datos
head(Auto) # cabecera
Auto[1:4, ]
dim(Auto)
## Para ver los nombres de las "columnas", se utiliza names.
## A los diferentes datos los llamaremos variables.
## En algunos documentos en vez de la palabra variables, utilizan la palabra vector.
names(Auto)
## Para llamar sÃ³lo a una variable se utilizar $:
Auto$mpg

## Si sÃ³lo vamos a trabajar con un conjunto de datos, es conveniente
## fijarla para no tener que llamarla cada vez que queramos trabajar con una variable

attach(Auto)

### summary te da las medidas tÃ­picas de posiciÃ³n de la EstadÃ­stica Descriptiva # nolint: line_length_linter.

summary(Auto)

## Observad que los datos numÃ©ricos los trata como tales.
## La funciÃ³n str proporciona informaciÃ³n sobre la estructura de los datos.

## Tipo de variables:
## chr = character : variable que almacena palabras de texto.
## num = numeric
## int = integer
## factor = cualitativas=datos categÃ³ricos (variables que puedan servir para clasificar). # nolint
## logical = V o F.

str(Auto)

## Observamos que hay tipos que nos gustarÃ­a cambiar.

## El tipo character no da mucho juego.
## Ni summary ni levels aportan nada porque la clase de character.
levels(name)
summary(name)

levels(horsepower)
summary(horsepower)

# Cargamos de nuevo la base de datos de nuevo asÃ­:
Auto <- read.csv("~/matematicas/aprendizaje estadistico/GEMA 24_25/primera semana/Auto.csv", stringsAsFactors = TRUE)
Auto <- na.omit(Auto)
str(Auto)

## Pero puede ser que no tenga mucho sentido considerar las variables year y
## cylinders como int:
summary(year)
summary(cylinders)

##
## Se pueden reconvertir las variables cylinders y year en "factor=cualitativas":

cylinders <- as.factor(cylinders)
year <- as.factor(year)


summary(year) # El summary te da frecuencias, como la funciÃ³n table.
table(year)

### Relacionar dos variables cualitativas: tabla de frecuencias:
F <- xtabs(~ cylinders + year) ## tabla de frecuencias; con table tambiÃ©n.
addmargins(F)

## En la prÃ¡ctica 2, trabajaremos mÃ¡s las tabla de frecuencias.

### Relacionar una cualitativa con una cuantitativa

## Recordemos el diagrama de cajas-bigotes.
## Consta de una caja central, delimitada por los cuartiles Q3 y Q1,
## donde se dibuja la mediana.

## De los extremos de la caja salen unas lÃ­neas que se extienden hasta los puntos
## LI = max {min(xi), Q1 âˆ’ 1.5 (RI)} y LS = min {max(xi), Q3 + 1.5 (RI)}
## Los datos que caen fuera del intervalo (LI, LS) se consideran datos atÃ­picos
## Se llama el rango intercuartil RIC la diferencia entre Q3 y Q1.

class(mpg)

boxplot(mpg) # individual
plot(cylinders, mpg, col = "red", varwidth = T, xlab = "cylinders", ylab = "MPG")

## TambiÃ©n asÃ­:

plot(mpg ~ cylinders, col = "red", varwidth = T, xlab = "cylinders", ylab = "MPG")

### MÃ¡s grÃ¡ficos:
## Los histogramas se suelen utilizar cuando los datos son numÃ©ricos.
## El histograma nos permite resumir la informaciÃ³n de una variable continua.
## Por defecto R selecciona los intervalos de agrupaciÃ³n con la misma longitud.
## y en el eje vertical se representa la frecuencia absoluta de los datos que caen en cada intervalo.

hist(mpg)
hist(mpg, col = 2, breaks = 15)


### Relacionar dos cuantitativas

## Lo mÃ¡s habitual es ver un diagrama de dispersiÃ³n.
## Â¿QuÃ© interpretaciÃ³n dais al siguiente diagrama?

plot(mpg, weight)

## En la red, verÃ©is grÃ¡ficos como el que sigue. A veces son Ãºtiles, a veces no.

plot(Auto)
#################################################################
## Veamos mÃ¡s funciones con una base tÃ­pica del propio R.
## QuizÃ¡ iris sea la base de datos de R mÃ¡s utilizada en docencia.
## iris: datos de 150 flores, de tres especies.

data(iris)
class(iris)
## Nombre de las variables: vemos que una variable es cualitativa y las otras cuantitativas.
names(iris)
## DimensiÃ³n de los datos
dim(iris)
## primeras filas
head(iris)
# View(iris)

summary(iris)

str(iris)

## TambiÃ©n se puede hacer el summary de una variable por especies,

tapply(iris$Sepal.Length, iris$Species, summary)

## Recordad que las medidas de dispersiÃ³n son: varianza y la desviaciÃ³n tÃ­pica
## Miden lo lejos que estÃ¡n situados los datos respecto la media.
## Representan la dispersiÃ³n de los datos si la media representa el centro.
## La desviaciÃ³n tÃ­pica, al igual que la media, se expresa en las mismas unidades que los datos.
## La varianza se expresa en las unidades al cuadrado.

tapply(iris$Sepal.Length, iris$Species, var)
tapply(iris$Sepal.Length, iris$Species, sd)

## Para hallar tablas de frecuencias absoluta, relativa y acumulada de valores no continuos,
## se ejecuta las Ã³rdenes table, table/length, cumsum(table())) respectivamente
table(iris$Species)
prop.table(table(iris$Species))
cumsum(table(iris$Species))

## Para estudiar las frecuencias con datos cualitativos,
## son Ãºtiles el diagrama de sectores o grÃ¡fico de barras:
pie(table(iris$Species))
barplot(table(iris$Species))

## Los histogramas se suelen utilizar cuando los datos son numÃ©ricos.
## El histograma nos permite resumir la informaciÃ³n de una variable continua.
## Por defecto R selecciona los intervalos de agrupaciÃ³n con la misma longitud.
## y en el eje vertical se representa la frecuencia absoluta de los datos que caen en cada intervalo.
summary(iris$Sepal.Width)
hist(iris$Sepal.Width)



## Respecto a visualizar varias variables: estas dos inputs realizan lo mismo.

plot(iris$Species, iris$Sepal.Width)
boxplot(iris$Sepal.Width ~ iris$Species)
