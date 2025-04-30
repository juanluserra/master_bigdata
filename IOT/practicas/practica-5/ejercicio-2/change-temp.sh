#!/usr/bin/bash
curl -iX PATCH http://155.54.225.141:1026/v2/entities/Laboratorio13/attrs \
  -H 'Content-Type: application/json' \
  -d '{
    "temperatura": { "value": 30.0, "type": "Number" }
  }'

