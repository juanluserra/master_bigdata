#!/usr/bin/env python3
"""
create_subscription_pretty.py

Crea una suscripción NGSI-v2 en Orion Context Broker y, si se crea correctamente,
obtiene y muestra la suscripción con JSON formateado (pretty print).
"""
import requests
import json

# ── CONFIGURACIÓN ────────────────────────────────────────────
ORION_HOST = '155.54.225.141'      # IP o hostname de Orion Context Broker
ORION_PORT = '1026'                # Puerto de Orion
ENTITY_ID   = 'Laboratorio13'      # ID de la entidad a suscribir
ACC_HOST    = '155.54.225.141'      # IP pública del Accumulator Server
ACC_PORT    = '1028'                # Puerto donde escucha /alerta

# Construcción del payload de suscripción (NGSI-v2)
subscription = {
    "description": "Notificar humedad al cambiar temperatura",
    "subject": {
        "entities": [
            { "id": ENTITY_ID, "type": "Laboratorio" }
        ],
        "condition": {
            "attrs": [ "temperatura" ]
        }
    },
    "notification": {
        "http": { "url": f"http://{ACC_HOST}:{ACC_PORT}/alerta" },
        "attrs": [ "humedad" ]
    },
    "throttling": 1
}

# Endpoint de suscripciones NGSI-v2
url = f"http://{ORION_HOST}:{ORION_PORT}/v2/subscriptions"

# Enviar la petición POST para crear la suscripción
response = requests.post(url, json=subscription, headers={
    'Content-Type': 'application/json'
})

# Mostrar código de estado
print(f"Status: {response.status_code}")

# Si se ha creado con éxito, obtener y mostrar la suscripción creada
if response.status_code in (200, 201) and 'Location' in response.headers:
    location = response.headers['Location']
    sub_url = f"http://{ORION_HOST}:{ORION_PORT}{location}"
    sub_resp = requests.get(sub_url, headers={'Accept': 'application/json'})
    try:
        sub_data = sub_resp.json()
        print("Subscription details:")
        print(json.dumps(sub_data, indent=2, ensure_ascii=False))
    except ValueError:
        print("Subscription response:")
        print(sub_resp.text)
else:
    # En caso de error, mostrar cabeceras y cuerpo crudo
    print("Response headers:", response.headers)
    print("Response body:", response.text)

