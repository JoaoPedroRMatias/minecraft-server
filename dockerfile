FROM openjdk:21-jdk

WORKDIR /usr/src/minecraft

COPY . .

EXPOSE 25565

CMD ["java", "-Xmx2G", "-jar", "server.jar", "nogui"]

