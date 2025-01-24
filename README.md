# LabIA
Laboratorio IA - Aplicaciones para desarrollo de automatizaciones y herramientas 



## Crear Red Docker para que todos los servicios tengan conexion

**Se podria realizar de dos formas**

bash´´´
chmod +x createnet.sh
´´´

´´´
sh createnet.sh
´´´

ó

´´´
docker network create \
  --driver=bridge \
  --subnet=172.50.0.0/16 \
  server
  ´´´
