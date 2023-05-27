# Version 2 del Dockerfile
FROM nginx:latest

LABEL description="Contenedor Nginx personalizado con volumen persistente"

# Copiar archivos de configuracion de Nginx

COPY nginx.conf /etc/nginx/nginx.conf

# Crear volumen persistente para el archivo index.html
VOLUME /usr/share/nginx/html

# Copiar archivo index.html inicial
COPY page/index.html /usr/share/nginx/html/

# Exponer el puerto 80
EXPOSE 80
