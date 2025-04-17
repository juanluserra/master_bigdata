#include <Ethernet.h>
#include "DHT.h"
#include <ThingerEthernet.h>

#define DHTPIN 3
#define RELAYPIN 8  // Corregido de DELAYPIN a RELAYPIN
#define DHTTYPE DHT11  // Definir el tipo de sensor DHT

// Rellenamos los datos necesarios de Thinger.io
#define USERNAME "juanluserra"
#define DEVICE_SENSOR_ID "arduino-practica4"
#define DEVICE_SENSOR_CREDENTIAL "IWuPP!8yYdW7E2$l"

// Inicializamos los objeto de Thinger.io y DHT
ThingerEthernet thing(USERNAME, DEVICE_SENSOR_ID, DEVICE_SENSOR_CREDENTIAL);
DHT dht(DHTPIN, DHTTYPE); 

// Guardamos la MAC del Arduino e iniciamos la conexión con Ehternet
byte mac[] = {0x90, 0xA2, 0xDA, 0x10, 0x81, 0x16};
EthernetServer server(80);

float temp_umbral = 28.5; 

void setup() {
  Serial.begin(9600);
  
  dht.begin();
  pinMode(DHTPIN, INPUT); 
  pinMode(RELAYPIN, OUTPUT);
  digitalWrite(RELAYPIN, LOW);
  
  Ethernet.begin(mac);
  
  Serial.print("IP asignada: ");
  Serial.println(Ethernet.localIP());

  // Recurso para enviar datos a Thinger.io
  thing["dht11"] >> [](pson& out){
    out["Temperatura"] = dht.readTemperature();
    out["Humedad"] = dht.readHumidity();
  };

  // Recurso para controlar el relay
  thing["relay"] << [](pson& in){
    if(in.is_empty()){
      in = (bool)digitalRead(RELAYPIN);
    }
    else{
      digitalWrite(RELAYPIN, in ? HIGH : LOW);
    }
  };
}

void loop() {
  // Mantenemos abierta la conexión con Thinger.io
  thing.handle();
  
  // Control de temperatura
  static unsigned long ultimaRevision = 0;
  if(millis() - ultimaRevision >= 10000){
    ultimaRevision = millis();
    
    float t = dht.readTemperature();
    if(t > temp_umbral){
    pson data;
      data["temp_umbral"] = temp_umbral;
      data["temperatura"] = t;           
      thing.call_endpoint("endpoint_practica4", data);
      Serial.println(F("Correo enviado"));
    }
  }
   // Hacemos una pausa entre lecturas
  delay(1000);
}