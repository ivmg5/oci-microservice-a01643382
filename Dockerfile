FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-a01643382
COPY /target/*.jar oci-microservice--a01643382.jar
COPY /src/main/resources/Wallet_javadev101 /oci-microservice-a01643382/Wallet_javadev101
ENV TNS_ADMIN=/oci-microservice-a01643382/Wallet_javadev101
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-a01643382.jar" ]