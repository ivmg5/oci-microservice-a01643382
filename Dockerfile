FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-a01643382
COPY target/oci-microservice-0.0.1-SNAPSHOT.jar /oci-microservice-a01643382.jar
COPY src/main/resources/Wallet_javadev /oci-microservice-a01643382/Wallet_javadev
ENV TNS_ADMIN=/oci-microservice-a01643382/Wallet_javadev
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "/oci-microservice-a01643382.jar" ]
