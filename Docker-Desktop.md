# Instalacion de Docker-Desktop en Ubuntu  
![image](https://github.com/user-attachments/assets/a1743b80-8084-4765-97a0-b86eb1893146)


***Documentacion Oficial de Docker*** 

***Instalacion verificada en Ubuntu*** 

**Para la instalacion de docker desktop se deben seguir unos pasos para evitar conflictos con con otro tipo de instalacion como docker.io, etc. Contiene lo necesario para no tener que usar estas otras herramientas.**

Siga estos pasos si solo desea utilizar Docker Desktop sin otros programas como docker.io, etc. (Recomendable para evitar incompatibilidad)




- Comando para desinstalar todos los paquetes en conflicto con Docker-Desktop:
```
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
```


- (Verificacion que no esta instalacdo en el sistema) Desistalacion de Docker-Desktop: 
```
sudo apt remove docker-desktop
rm -r $HOME/.docker/desktop
sudo rm /usr/local/bin/com.docker.cli
sudo apt purge docker-desktop
```

- Para entornos de escritorio que no sean Gnome, gnome-terminal se debe instalar: 

```
sudo apt install gnome-terminal
```

- Clave GPG (Necesario para iniciar sesion posteriormente a la instalacion) (Obligatorio si es la primera vez que instala Docker-Desktop)
```
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

- Instalar paquete .deb

https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64&_gl=1*13sqsk8*_ga*MTI4MzIxMjkyLjE3MjkwMzQ3MzM.*_ga_XJWPQMJYHQ*MTczNDEwMzY3OS4zMi4xLjE3MzQxMDUxMTMuMTUuMC4w

- Dirijiste a la carpeta Descargas, e introducir:
```
sudo apt-get update
sudo apt-get install ./docker-desktop-amd64.deb
"Puede ejecutar'ls' para encontrar el paquete .deb"
```
- Aparecera Docker Desktop en el menu de inicio.
- Cuando lo abra, acepte terminos y privacidad, e inicie sesion
- (Si no funciona la opcion de iniciar sesion, realice el paso de Clave GPG)

Puede consultar en la documentacion de docker para mas informacion:
https://docs.docker.com/desktop/setup/install/linux/ubuntu/
