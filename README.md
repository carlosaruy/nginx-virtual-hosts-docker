
# Nginx Virtual Hosts Docker

Este repositorio contiene una configuración de Docker y Nginx para levantar dos servidores virtuales: **pepito.local** y **pepe.local**, cada uno sirviendo contenido diferente.

## Contenido

- **Dockerfile**: Configuración de Nginx con dos servidores virtuales.
- **pepito.local.conf**: Configuración de Nginx para **pepito.local**.
- **pepe.local.conf**: Configuración de Nginx para **pepe.local**.

## Pasos para ejecutar el Docker

### 1. Clonar el repositorio

```bash
git clone https://github.com/tu-usuario/nginx-virtual-hosts-docker.git
cd nginx-virtual-hosts-docker
```

### 2. Construir la imagen Docker

```bash
docker build -t mi-nginx .
```

### 3. Ejecutar el contenedor

```bash
docker run -d -p 80:80 --name mi-nginx-container mi-nginx
```

### 4. Configurar el archivo hosts en tu máquina local

Edita el archivo **hosts** para apuntar los dominios a tu máquina local:

- **Linux/macOS**: Edita `/etc/hosts`.
- **Windows**: Edita `C:\Windows\System32\drivers\etc\hosts`.

Agrega las siguientes líneas:

```
127.0.0.1   pepito.local
127.0.0.1   pepe.local
```

### 5. Probar los sitios web

Abre tu navegador y visita:

- [http://pepito.local](http://pepito.local): Deberías ver **"holis!"**.
- [http://pepe.local](http://pepe.local): Deberías ver **"hola!"**.

## Notas adicionales

- **Firewall**: Asegúrate de que el puerto 80 esté permitido en tu firewall.
- **Verificación de Nginx**: Para verificar la configuración dentro del contenedor:

  ```bash
  docker exec -it mi-nginx-container nginx -t
  ```

- **Logs**: Para ver los logs del contenedor:

  ```bash
  docker logs mi-nginx-container
  ```

## Licencia

Este proyecto está bajo la Licencia MIT.
