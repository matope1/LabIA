# LabIA
Laboratorio IA - Aplicaciones para desarrollo de automatizaciones y herramientas.


## Crear Red Docker para que todos los servicios tengan conexión

**Se podría realizar de dos formas**

- Por script:
```
chmod +x createnet.sh
```

```
sh createnet.sh
```

- Por comando directamente:

```
docker network create \
--driver=bridge \
--subnet=172.50.0.0/16 \
server
```
