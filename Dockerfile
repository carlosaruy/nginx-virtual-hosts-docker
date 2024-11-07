FROM nginx:latest

# Eliminar la configuración por defecto
RUN rm /etc/nginx/conf.d/default.conf

# Crear directorios para los sitios web
RUN mkdir -p /var/www/pepito.local /var/www/pepe.local

# Agregar los archivos index.html con el contenido deseado
RUN echo "holis!" > /var/www/pepito.local/index.html
RUN echo "hola!" > /var/www/pepe.local/index.html

# Copiar las configuraciones de nginx para cada sitio
COPY pepito.local.conf /etc/nginx/conf.d/
COPY pepe.local.conf /etc/nginx/conf.d/

# Exponer el puerto 80
EXPOSE 80

# Comando para iniciar nginx
CMD ["nginx", "-g", "daemon off;"]

