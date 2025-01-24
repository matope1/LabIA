#!/bin/bash

NETWORK_NAME="server"

SUBNET="172.50.0.0/16"

echo "Creando la red Docker interna: |$NETWORK_NAME| con subred $SUBNET..."

docker network create \
  --driver=bridge \
  --subnet=$SUBNET \
  $NETWORK_NAME

if [ $? -eq 0 ]; then
    echo "Red |$NETWORK_NAME| creada exitosamente."
else
    echo "Error al crear la red |$NETWORK_NAME|."
fi
