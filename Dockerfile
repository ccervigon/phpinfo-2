# FROM scratch en el caso del cídigo compilado de forma estática, "alpine" sería la libreria deseada
FROM alpine

# equivalente a mkdir -p /app && cd /app
WORKDIR /app

# Copiamos el codigo fuente a la imagen de docker
COPY src .

# Con run instalamos programas y librerias en nuestra imagen de docker 
RUN apk add php

# Para ejecutar: php -f index.php
ENTRYPOINT /usr/bin/php
CMD [-f index.php -S 0.0.0.0:8080]
