#include <SPI.h>
#include <Ethernet.h>
#include <DHT.h>

// ===== Configuración de red =====
// Direcciones MAC e IP asignadas al Arduino (ajusta según indicaciones del profe)
byte mac[] = { 0x90, 0xA2, 0xDA, 0x10, 0x80, 0x8B };

// IP pública del Orion Context Broker de FIWARE
IPAddress fiware(155, 54, 225, 141);
const uint16_t fiware_port = 1026;

// ===== Configuración del sensor DHT11 =====
#define DHTPIN 3       // Pin digital conectado al DHT11
#define DHTTYPE DHT11  // Modelo de sensor
DHT dht(DHTPIN, DHTTYPE);

// ===== Identificador de la entidad =====
const char* entityId = "Laboratorio13";  // Sustituye “1” por el número asignado

EthernetClient client;

// ===== Función auxiliar: envía temperatura y humedad a FIWARE =====
void send_values(float t, float h, String updateAction) {
  // Construye el JSON con la estructura NGSI v1 (updateContext)
  String json = String("{") +
    "\"contextElements\":[{" +
      "\"type\":\"Laboratorio\"," +
      "\"isPattern\":\"false\"," +
      "\"id\":\"" + entityId + "\"," +
      "\"attributes\":[{" +
        "\"name\":\"temperatura\"," +
        "\"type\":\"float\"," +
        "\"value\":" + String(t) + "},{" +
        "\"name\":\"humedad\"," +
        "\"type\":\"float\"," +
        "\"value\":" + String(h) + "}" +
      "]}]\," +
    "\"updateAction\":" + updateAction +
  "}";

  // Envia cabeceras HTTP 1.0 y payload
  client.print("POST /v1/updateContext HTTP/1.0\n");
  client.print("Host: "); client.print(fiware); client.print(":" ); client.print(fiware_port); client.print("\n");
  client.print("Content-Type: application/json\n");
  client.print("Accept: application/json\n");
  client.print("Connection: close\n");
  client.print("Content-Length: "); client.print(json.length()); client.print("\n\n");
  client.print(json);
  client.print("\n");
}

void setup() {
  Serial.begin(9600);
  dht.begin();

  // Inicia la interfaz Ethernet con IP estática
  Ethernet.begin(mac);
  delay(1000);
  Serial.print("Arduino IP: ");
  Serial.println(Ethernet.localIP());

  // Registro inicial de la entidad (CREATE / APPEND)
  if (client.connect(fiware, fiware_port)) {
    Serial.println("Conectado a FIWARE. Registrando entidad...");
    send_values(0.0, 0.0, "\"APPEND\"");
    client.stop();
    Serial.println("Entidad Laboratorio registrada.");
  } else {
    Serial.println("Error al conectar con FIWARE para registrar entidad.");
  }
}

void loop() {
  // Espera 5 segundos entre lecturas
  delay(5000);

  // Obtiene valores reales del DHT11
  float h = dht.readHumidity();
  float t = dht.readTemperature();

  // Verifica lectura válida
  if (isnan(h) || isnan(t)) {
    Serial.println("Error al leer del DHT11");
    return;
  }

  // Muestra por serial
  Serial.print("Temp: "); Serial.print(t); Serial.print(" °C, Hum: "); Serial.print(h); Serial.println(" %");

  // Actualiza la entidad en FIWARE (UPDATE)
  if (client.connect(fiware, fiware_port)) {
    send_values(t, h, "\"UPDATE\"");
    client.stop();
    Serial.println("Datos enviados a FIWARE.");
  } else {
    Serial.println("Error al conectar con FIWARE para enviar datos.");
  }
}
