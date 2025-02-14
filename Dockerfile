FROM docker:dind

# Instala herramientas necesarias
RUN apk add --no-cache git bash

# Clona el primer repositorio
RUN git clone https://github.com/KidmanC/Docker /app

# Establece el directorio de trabajo
WORKDIR /app

# Da permisos de ejecución al script
RUN chmod +x run-benchmarks.sh

# Ejecuta el script al iniciar el contenedor
CMD ["bash", "./run-benchmarks.sh"]
