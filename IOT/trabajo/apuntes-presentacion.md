# Diapositiva 4 - Fundamentos de la Modulación 1
En IoT la modulación de señales es un proceso fundamental. Esto se debe a que la modulación de una señal permite transmitir información a través de una onda electromagnética y, dependiendo del tipo de modulación que se use y cómo se use, la onda podrá transmitir más información por ancho de banda, ir más rápido, gastar menos recursos, etc. 

## Onda Portadora
Es la onda que funciona como medio de transporte para la transmisión, como si fuera el vehículo que transporta la información. Esta onda suele ser una onda de alta frecuencia, lo que permite que sea detectada por antenas pequeñas. Esto se debe a que el tamaño de la antena debe ser mayor a la longitud de onda, que a su vez es inversamente proporcional a la frecuencia: a mayor frecuencia menor longitud de onda y, por tanto, menor tamaño de antena. 

## Onda moduladora
Esta es la onda que transmite la información y suele ser de una frecuencia más baja que la portadora. Su objetivo es modificar algún parámetro de la onda portadora para poder codificar la información.


# Diapositiva 5 - Fundamentos de la Modulación 2

## Formas básicas de modulación
Hay dos formas básicas de modulación:
- **Modulación de amplidud:** Consiste en modificar la amplitud de la onda para codificar información. Un ejemplo básico es la modulción AM.
- **Modulación angular:** Consiste en variar el ángulo de la onda para codificar la información. Para modificar este ángulo se puede cambiar tanto la fase directamente, como la frecuencia (de forma que el ángulo varía más rápido). Dos ejepmplos básicos son PM y FM.

## Formatos básicos de modulación
También se pueden clasificar las modulaciones en digital y analógica. Una modulación anallógica cambia los parámetros de la onda portadora de forma continua. Sin embargo, las modulaciones digitales lo hacen de forma discreta. La modulación continua sirve para transmitir información como voz, música, etc; por otro lado, la modulación discreta es muy útil en IoT, ya que transmite la información en binario, pudiendo así optimizar la cantidad de datos que se envían.


# Diapositiva 7 - Modulación así
La modulación ASK es un tipo de modulación de amplitud. Consiste en modificar la amplitud de la onda para representar un 1 o un 0, de forma que una amplitud modificada será un 1 y la amplitud por defecto un 0 (en bionario). El método OOK es un tipo de ASK que usa la ausencia de amplitud como un 0 y la presencia de amplitud como un 1.

** Ver y describir la fórmula **

Existen variaciones para transmitir más información, como QAM, que en vez de usar solo dos amplitudes utuliza 4 amplitudes diferentes, codificando así en símbolos de dos bits.

## Ventajas y desventajas
Las **ventajas** son:
- Es un método simple de implementar, ya que lo único que hace falta es variar la amplitud con un voltaje. 
- Este método, sobre todo el OOK, es muy eficiente energéticamente. Esto se debe a que el método OOK solo transmite información cuando hay un 1. Además, el variar solo la amplitud no es algo muy costoso.

Las **desventajas** son:
- Es muy susceptible al ruido. Esto se debe a que la variación de amplitud es una transformación lineal, por lo que las variaciones en esta amplutud modifican enormemente la onda resultante.
- Tiene poca eficiencia espectral, es decir, transmite poca información para el ancho de banda que utiliza. Esto se debe a que transmite símbolos pequeños, solo con 1 o 0. En el caso de QAM esto mejora, ya que los símbolos transmitidos contienen más información.


# Diapositiva 8 - Modulación FSK
En esta modulación se usan dos frecuencias diferentes para representar 0 o 1 en binario. Al igual que en ASK, los símbolos continen tan solo dos dígitos. 

** Describir fórmula e imagen **

## Ventajas y desventajas
Las ventajas son:
- Tiene una buena resistencia al ruido y a la interferencia. Esto se debe a que, a diferencia en ASK, no usamos una transformación lineal, sino que la información se transmite con los cambios de frecuencia.
- Al tener una envolvente de amplitud constante, no hacen falta amplificadores lineales. El usar amplificadores no lineales aumenta la eficiencia en potencia.
- Los transmisores y receptores de FSK son fáciles de implementar para aplicaciones de baja potencia.

Las desventajas son:
- Las técnicas FSK, como ASK, tienen una baja eficiencia espectral.
- La velocidad de datos suele ser baja.
- Es una técnica sensible al desplazamiento de frecuencia en los osciladores transmisor y receptor.


# Diapositiva 9 - Modulación PSK
En este tipo de modulación se usan dos fases para representar 0 y 1. A parte de la modualción PSK tenemos modulaciones de órdenes superiores, como QPSK.En el caso de la modualción PSK, en su caso más sencillo de BSPK, tenemos un ángulo de 0º para el bit 0 y un ángulo de 180º para el bit 1. Por otro lado, en el caso de QPSK, tenemos cuatro ángulos (0º, 90º, 180º, 270º) para representar los bits 00, 01, 10 y 11. Se pueden seguir añadiendo más ángulos para representar más bits.

** Explicar fórmula e imagen **

## Ventajas y desventajas
Las ventajas son:
- Las modualciones PSK de órdenes mayores a BPSK tienen una buena eficiencia espectral. A mayor orden mejor eficiencia.
- Tienen una buena resistencia la ruido en comparación con ASK, debido a que no usan transformaciones lineales.
- Al igual que FSK usa una envolvente de amplitud constante.

Las desventajas son:
- Los moduladores PSK de orden superior son más difíciles de implementar que ASK y FSK, ya que es una modulación más compleja. 
- La modulación PSK suele necesitar una demodulación coherente para un rendimiento óptimo, ya que si no se pierde la fase y por tanto la decodificación falla. Esto requiere circuitos más complejos de decodificación.
- A mayor orden, aunque se transmita más información, también es mayor el riesgo de pérdidas y fallos, ya que es más fácil confundir y mezclar fases debido al ruido.


# Diapositiva 10 - Modulación OFDM
La modulación OFDM consiste en combinar diferentes modulaciones para transmitir más información. Esta modulación divide el ancho de banda disponible en varias subportadoras ortogonales. Las ondas ortogonales son las que su producto escalar integral es 0. 

El funcioamiento de OFDM es el siguiente:
- Se agrupan los bits en símbolos.
- Cada símbolo se asigna a una subportadora.
- Las subportadoras se pasan del dominio de frecuencias al dominio temporal.
- Se añade un prefijo cíclico al inicio del símbolo para elimiar la interferencia con el símbolo anterior.
- Se envía la señal.

Si queremos decodificarla hacemos:
- Se elimina el prefijo cíclico.
- Se demodulan las portadoras para obetener los símbolos.
- Se convierten los símbolos a bits.

## Ventajas y desventajas
Las ventajas son:
- Ofrece una muy alta eficiencia espectral, ya que se usa todo el ancho de banda disponible para enviar la máxima informaicón posible en paralelo.
- Es muy resistente al ruido. Esto se debe a que experimenta un desvanecimiento plano en vez de un desvanecimiento selectivo en frecuenicas, es decir, las frecuencias se atenúan y cambian de fase simultáneamente en vez de individualmente.
- La ecualicación del receptor es sencilla, ya que se tratan las diferentes ondas de forma independiente.

Las desventajas son:
- Las señales OFDM pueden tener una alta relación potencia pico, ya que al sumarse en fase pueden superponerse varios picos de diferentes subportadoras, lo que hace que se requieran amplificadores lineales de alta calidad. Esto se hace para que los amplificadores de potencia no pasen a su región no lineal.
- Es una modulación sensible al desplazamiento de frecuencia y a la deriva, ya que pequeñas oscilaciones en el transmisor o el receptor pueden cargarse la ortogonalidad de las ondas. 
- Los sisteamas OFDM requieren incorporar FFTs e IFFTs, lo que puede ser costoso y complejo.


# Diapositiva 11 - Modulación CSS
La modulación de espectro ensanchado es una técnica de modulación en la cuál la señal enviada se distribuye intencionalmente sobre su ancho de banda para ocupar uno mayor al mínimo necesario para enviar la información. Algunos ejemplos son la modualción de salto de frecuencia FHSS, la modualción por secuencia discreta DSSS y la modulación por código de secuencia CSS, usada en LoRaWAN.

La modulación CSS utiliza chirps para transmitir la informaicón. Un chirp es un cambio de frecuencia lineal a través del tiempo. Por ejemplo, un chirp de 10Hz/s aumenta la frecuencia de una señal 10Hz cada segundo, por lo que si partimos de 200Hz, a los 10s segundos tendremos 300Hz.

El funciomamiento de la modulación es el siguiente:
- Se agrupan los bits en símbolos.
- Se crea un chirp de referencia que barre todo el ancho de banda $B$ en un tiempo $T$. Por ejemplo, con un ancho de bada de 100Hz y un periodo de 5s tenemos un chirp de 20Hz/s.
- Cada símbolo se representa mediante un desplazamiento en el chirp base. Por ejemplo, si se tienen 4 símbolos (números de dos bits), se divide el eslectro en 4 tramos de frecuencia. Luego, para representar un chirp concreto se realiza N veces el desplazamiento de frecuencia para la frecuencia inicial. Al, sueperar la frecuencia máxima se vuelve a la frecuencia mínima.

## Ventajas y desventajas
Las ventajas son:
- Es una modulación altamente resistente al ruido y a la interferencia, lo que aumenta la distancia a la que puede enviarse.
- Esta modulación permite la coexistencia de múltiples dispositivos en el mismo canal de comunicación sin interferencias significativas.
- Es una técnica con una alta eficiencia energética.

Las desventajas son:
- La velocidad de datos suele ser menor que con otras técnicas como OFDM, debido a la dispersión de la seál en un ancho de banda mayor.
- El procesamiento de señales de chirp puede ser más complejo que esquemas de modulación más simples como ASK y FSK.


# Diapoisitiva 13 - Ejemplos prácticos

- Cámaras de seguridad Wifi -- OFDM, QAM. Necesitan transmitir grandes cantidades de datos a gran velocidad, por lo que OFDM y QAM son buenas opciones.
- Agricultura Inteligente -- CSS. Se necesitan sensores de muy bajo consumo y una cobertura muy extensa. 
- Seguimiento de activos y activos y lectura de contadores -- PSK. En este tipo de situaciones se necesita un buena cobertura, para lo cual PSK es bueno. Esto se debe a que estos métodos reducen los picos de potencia, lo que se traduce en una mejor cobertura debido a ciertas características de los amplificadores.
- Telemetría médica -- ASK. Estos dispositivos requieren simplicidad y bajo consumo.
- Hogar inteligente y termostatos - FSK. En estos casos se busca un coste bajo y fiabilidad. La resistencia al ruido y simplicidad que ofrece FSK es ideal en estos casos.

