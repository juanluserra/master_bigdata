// Vamos a crear un blink que indique SOS:
// - 3 destellos cortos (puntos)
// - 3 destellos largos (rayas)
// - 3 destellos cortos (puntos)

// Aquí se inicializan las variables
void setup() {
  // Inicializamos la variable LED_BUILTIN como un OUTPUT
  pinMode(LED_BUILTIN, OUTPUT);
}

// Creamos una funcion para el SOS
void SOS() {
  // Genera 3 rayas (cada "raya" dura 1000 ms encendida)
  for (int i = 0; i < 3; i++) {
    digitalWrite(LED_BUILTIN, HIGH);
    delay(1000);
    digitalWrite(LED_BUILTIN, LOW);
    delay(500);
  }

  // Genera 3 puntos (cada "punto" dura 250 ms encendida)
  for (int i = 0; i < 3; i++) {
    digitalWrite(LED_BUILTIN, HIGH);
    delay(250);
    digitalWrite(LED_BUILTIN, LOW);
    delay(500);
  }

  // Genera 3 rayas nuevamente
  for (int i = 0; i < 3; i++) {
    digitalWrite(LED_BUILTIN, HIGH);
    delay(1000);
    digitalWrite(LED_BUILTIN, LOW);
    delay(500);
  }

  // Tiempo adicional antes de repetir la secuencia
  delay(1000);
}

// Aquí definimos la función "loop", que como dice su nombre será un loop en el que el código se iniciará infinitamente
void loop() {
  SOS();
}
