#include <DHT.h>
#include <Ethernet.h>

// Configuración del sensor DHT11
#define DHTPIN 3         // Pin de datos del DHT11
#define DHTTYPE DHT11    // Definimos el tipo de sensor DHT11
DHT dht(DHTPIN, DHTTYPE);

// Configuración de pines para el relé y LED (opcional)
#define RELAY_PIN 8      // Pin para el relé del ventilador
#define LEDPIN 9         // Pin para un LED indicador (si se usa)

// Configuración de la MAC
byte mac[] = {
  0x90, 0xA2, 0xDA, 0x10, 0x80, 0x8B
};
EthernetServer server(80);

// Variables para almacenar las últimas 10 lecturas
float temperaturas[10];
float humedades[10];
int indiceArray = 0;  // Índice actual en los arrays

// Variables para el muestreo periódico del sensor (cada 1 segundo)
unsigned long sensorPrevTime = 0;
const unsigned long sensorInterval = 1000; 

// Variables para el estado del ventilador (relé)
bool estadoVentilador = false;

// Variables para procesar la petición HTTP
String method = String(4);
bool method_readed = false;


void setup() {
  Serial.begin(9600);
  dht.begin();

  // Configurar pines
  pinMode(DHTPIN, INPUT);
  pinMode(RELAY_PIN, OUTPUT);
  pinMode(LEDPIN, OUTPUT);
  digitalWrite(RELAY_PIN, LOW);

  // Inicialización de Ethernet
  Ethernet.begin(mac);
  server.begin();
  Serial.print("Servidor disponible en: ");
  Serial.println(Ethernet.localIP());

  // Inicializar arrays con la primera lectura del sensor
  float tempInicial = dht.readTemperature();
  float humInicial = dht.readHumidity();
  for (int i = 0; i < 10; i++) {
    temperaturas[i] = tempInicial;
    humedades[i] = humInicial;
  }
}


void loop() {
  // Actualización de la lectura del sensor cada 1 segundo
  unsigned long tiempoActual = millis();
  if (tiempoActual - sensorPrevTime >= sensorInterval) {
    sensorPrevTime = tiempoActual;
    float t = dht.readTemperature();
    float h = dht.readHumidity();
    
    temperaturas[indiceArray] = t;
    humedades[indiceArray] = h;
    indiceArray = (indiceArray + 1) % 10;
    
    Serial.print("Temperatura: ");
    Serial.print(t);
    Serial.print(" °C, Humedad: ");
    Serial.print(h);
    Serial.println(" %");
  }
  
  // Creamos la web
  EthernetClient client = server.available();
  if (client) {
    Serial.println("new client");
    boolean currentLineIsBlank = true;
    
    while (client.connected()) {
      if (client.available()) {
        char c = client.read();
        Serial.write(c);
        
        if (method.length() < 4)
          method += c;       
        
        if (method.length() == 4 && method_readed == false) {
          method_readed = true;
          
          if (method == "POST") {
            estadoVentilador = !estadoVentilador;
            digitalWrite(RELAY_PIN, estadoVentilador ? HIGH : LOW);
            Serial.print("Ventilador: ");
            Serial.println(estadoVentilador ? "ON" : "OFF");
          }
        }
        
        if (c == '\n' && currentLineIsBlank) {
          method = "";
          method_readed = false;
          
          client.println("HTTP/1.1 200 OK");
          client.println("Content-Type: text/html");
          client.println("Connnection: close");
          client.println();
          client.println("<!DOCTYPE HTML>");
          client.println("<html>");
          client.println("<meta http-equiv=\"refresh\" content=\"1\">");
          client.println("<h1>Lecturas DHT11</h1>");
          client.println("<br />");    
          
          client.println("<table border='1'>");
          client.println("<tr><th>#</th><th>Temperatura (°C)</th><th>Humedad (%)</th></tr>");
          for (int i = 0; i < 10; i++) {
            int pos = (indiceArray + i) % 10;
            client.print("<tr><td>");
            client.print(i + 1);
            client.print("</td><td>");
            client.print(temperaturas[pos]);
            client.print("</td><td>");
            client.print(humedades[pos]);
            client.println("</td></tr>");
          }
          client.println("</table>");
          client.println("<br />");
          
          client.print("<p>Ventilador: ");
          client.print(estadoVentilador ? "ON" : "OFF");
          client.println("</p>");
          
          client.println("<form action = '/' method = 'post'>  <input type='submit' value='ON/OFF'>  </form>");
          
          client.println("</html>");
          client.println("</html>");
          break;
        }
        
        if (c == '\n') {
          currentLineIsBlank = true;
        } else if (c != '\r') {
          currentLineIsBlank = false;
        }
      }
    }
    
    delay(1000);
    
    // Cerramos la paginaa
    client.stop();
    Serial.println("client disconnected");
  }
}
