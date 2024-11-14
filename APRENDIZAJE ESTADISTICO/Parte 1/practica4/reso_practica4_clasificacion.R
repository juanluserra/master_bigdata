library(ISLR)
data("Default")
 ?Default
attach(Default)
table(default) #esta tabla es la que vamos a "perseguir" con los diferentes modelos.
#View(Default)

### Observemos los datos:
names(Default)
dim(Default)
plot(balance,income,col=default) #col=colorear
plot(balance,income,col=student) #col=colorear
plot(default,income)
plot(default,balance)
plot(student,income)
plot(student,balance)

## ¿Conclusiones?
### una de las conclusiones que podemos sacar es que el estudiante más uso de 
### la tarjeta, aunque tenga menos ingresos que el que no lo es; 
### otra: el income está altamente relacionado con student.
### otra: ?

addmargins( table(default,student))
prop.table( table(default,student))*100
prop.table( table(default,student),2 )*100
prop.table( table(default,student),1 )*100

 
### ¿Conclusiones?

### Hagamos Logistic Regression para predecir Default (número de clases=2), with p=1, predictor: balance.
### Tal como se dijo en clase, la recta de regresión no parece lo más adecuado.
### Creamos primero dummy variables para la recta de regresión. Si no, da error:

lm(default~ balance)
class(default)

Default$dummydefault <- (default == "Yes")*1
Default$dummystudent <- (student == "Yes")*1
attach(Default)

# aprovechamos que tenemos todas numéricas para analizar la información que nos 
# da la matriz de correlación

M<-cor(data.frame(balance,income,dummydefault,dummystudent))
corrplot::corrplot(M, type = "upper", tl.cex = 0.4)

plot(balance,dummydefault) # no es un plot de cajas
abline(lm(dummydefault~balance))

## Para la regresión logística, no hace falta crear variables dummy

lr<-glm(default~balance,family=binomial)

## Visualizamos la respuesta. Recordad que el modelo de regresión logística 
## predice P(Y=1/X)
  
plot(balance, predict(lr, type = "response")) 

## nos aseguramos que 1 es default=Yes
contrasts(default)

## lo que visualizamos en la gráfica es:

predict(lr, type = "response")[1:10]

## Al igual que se hacía en el análisis de regresión lineal, 
## podremos utilizar las funciones coef, summary, residuals, etc. 

lr$coefficients
 
summary(lr)$coef #Para su interpretación, vemos página 136 del libro.

## También se puede hacer predicciones. Por ejemplo:
predict(lr,data.frame(balance=1000),type = "response" )

## ojo! el modelo ya no es lineal
predict(lr,data.frame(balance=2000),type = "response" )

## Vemos que nos predice el modelo. 
## Para ello, podemos "contar" cuantos tienen la probabilidad por encima de 0,5:
lr.probs <- predict(lr , type = "response") ##aquí van las probabilidades
lr.pred <- rep("No", 10000) ##creamos un vector con 10000 No'es
lr.pred[lr.probs > .5] = "Yes" ## y modificamos las posiciones donde la prob. sea >.5, 

table(lr.pred)
table(lr.pred,default) ##¿Qué aprecias?

## Dicho esto, no olvidemos que hay más variables en la base de datos:
names(Default)

#Si tenemos en cuenta el ser estudiante:

lrs<-glm(default~student,family=binomial)
lrs$coefficients

## Lógicamente, en predict tan sólo obtendremos dos datos: 
## Pr(default=Yes|student=yes) y Pr(default=Yes|student=no)  
plot(student,predict(lrs, type = "response"))

## Una pregunta que nos podríamos hacer es si este modelo nos da la misma información
## que las frecuencias condicionadas: la respuesta es sí.

predict(lrs, type = "response")[1:3]

prop.table( table(default,student),2 )*100

## Parece que a un banquero le puede interesar, además del balance, 
## si el futuro cliente es estudiante o no.

## Veamos que ocurre si tenemos todas las variables en cuenta.

## MULTIPLE LOGÍSTIC LINEAR REGRESION ##

lrT<-glm(default~balance + income +student,family=binomial)

summary(lrT)$coef

## El coeficiente que acompaña a "Student" es negativo, lo cual es un poco sorprendente.
## Esto significa que si fijamos  balance e income,  el estudiante tiene menos 
## probabilidad que defraude. Además la variable income parece que sobra (un z-value muy 
## pequeño, Pr muy alta). 

## Los gráficos y datos anteriores indican que income está altamente relacionado con student 



## Estos plots indican que los ingresos de un estudiante son menores, con lo cual
## si el income aumenta, el coeficiente que acompaña a Student debe ser negativo.
## Se aprecia que Students tienen menos ingresos, mismas deudas, con
## lo cual es lógico que tengan más probabilidad de fraude cuando sólo se considera
## el predictor student. Lo más relevante: mismo income, mismo balance, el 
## estudiante se comporta mejor que el no estudiante; sin embargo, el estudiante
## suele tener menos income y más balance que el que no lo es.

## De todas formas, nos interesa ver la efectividad del modelo. 
## Para ello, podemos "contar" cuantos tienen la probabilidad por encima de 0,5:

lrT.probs <- predict(lrT , type = "response") ##aquí van las probabilidades
lrT.pred <- rep("No", 10000) ##creamos un vector con 10000 No'es
lrT.pred[lrT.probs > .5] = "Yes" ## y modificamos las posiciones donde la prob. sea >.5, 

## por último, comparamos resultados:
table(lrT.pred)
table(default)

## Observad que no es mucho mejor que la tabla con regresión logística con sólo default y balance

########## LINEAR DISCRIMINANT ANALYSIS (LDA) ########## 

library(MASS)

lda1=lda(default~balance) #p=1, K=2

## Vemos que modelo obtenemos:

#### Prior probabilities of groups: 
#######indican simplemente las estimaciones de p1_1=P(default=1) y pi_0=P(default=0) a partir de los datos
#### Group means: 
#######la media del balance con default=1 y default=0.

#### Recordad que en el LDA, se asume que las funciones de densidad de probabilidad 
#### de cada clase son distribuciones normales, con la misma varianza (matriz de covarianza)

## Por curiosidad:

k1=subset.data.frame (Default,default=="Yes")
sd(k1$balance)
k0=subset.data.frame (Default,default=="No")
sd(k0$balance)

lda1 

## La predicción se lleva a cabo con la función predict: 

lda1.pred=predict(lda1)

names(lda1.pred) ##podemos obtener tres tipos de datos
lda1.pred$class[1:3] ##indica el valor de default asignado a cada observación-
## las tablas nos indican que los resultandos no son óptimos.
table(lda1.pred$class,default)
table(lr.pred,default) #de hecho, un poco mejor.

lda1.pred$posterior[1:3,] ##la columna k+1 de esta clase indica la probabilidad de default=k 

lda1.pred$x[1:3] ##x contiene el discriminante lineal para k=1

## la observación 174 tiene como dato default=Yes. Observa que datos me da la lda.

############################################################
## Veamos ahora LDA con K=2, p=2:

lda2=lda(default~balance+student )

## Tenemos: 
lda2
## prior probabilities: no cambian lógicamente
## group means: la media de balance de los que no defraudan y de los que sí.
## A grosso modo, estiman los mu_k. 
## Los coefficients están relacionados con la función que hay que 
## minimizar, delta_k.

## Sin embargo analicemos la "confusion matrix":
ldapredi=predict(lda2)
names(ldapredi)

table(ldapredi$class,default ) #no mejora mucho la anterior. Es la tabla 4.4 del libro.

## En los datos, hay 9644+23=9667 que no defrauden, y 252+81=333 que sí. 
## El análisis detecta que 9644 +252=9896 como NO, y 23+81=104 como SÍ.
## Clasifica mal a 23+252=275 personas ( o sea, un 2.75% al haber 10000)
## Sin embargo, 333-81=252 personas que defraudan no han sido detectadas, 
## es decir, un 75%  (252/333=0.75) de la gente que defrauda en la muestra no ha 
## sido detectaca. Nota: si se tiene en cuenta income, el análisis es casi idéntico.
## Conclusión: el análisis no ha sido muy efectivo. 

## Por defecto, el método clasifica Default=1 las probabilidades mayores de 0.5:
sum(ldapredi$posterior[,2]>.5)

## Podemos modificar el umbral (threshold value)  a 0.2, es decir, si 
## P(default=Yes|X)>2 => default =yes
sum(ldapredi$posterior[,2]>.2)

## el número de "defraudadores" es 430, que es más de los que hay pero 
## a modos prácticos, beneficia el banquero (véase tabla 4.5 del libro)

#Por último, si queremos hacer predicciones en un nuevo conjunto de datos:
predict(lda2,newdata = data.frame( balance=c(1230,2200,700,1114), student=c("No", "No", "Yes", "Yes")), type="reponse" )

