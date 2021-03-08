# FROM scratch en el caso del cídigo compilado de forma estática, "alpine" sería la libreria deseada
FROM alpine

# equivalente a mkdir -p /app && cd /app
WORKDIR /app


COPY src .
