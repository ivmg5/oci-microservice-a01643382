FROM openjdk:17-jdk-slim

WORKDIR /oci-microservice-a01643382

# Copiar el archivo JAR correctamente
COPY target/oci-microservice-0.0.1-SNAPSHOT.jar /oci-microservice-a01643382.jar

# Copiar la carpeta Wallet_javadev101 (sin usar una ruta absoluta en COPY)
COPY src/main/resources/Wallet_javadev /oci-microservice-a01643382/Wallet_javadev

# Configurar la variable de entorno
ENV TNS_ADMIN=/oci-microservice-a01643382/Wallet_javadev

# Exponer el puerto 8080
EXPOSE 8080

# Ejecutar la aplicación correctamente usando una ruta absoluta
ENTRYPOINT [ "java", "-jar", "/oci-microservice-a01643382.jar" ]
