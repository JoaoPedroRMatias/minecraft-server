FROM openjdk:17-alpine

ENV SERVER_JAR server.jar
ENV SERVER_DIR /usr/src/minecraft

RUN mkdir -p $SERVER_DIR
WORKDIR $SERVER_DIR

COPY $SERVER_JAR $SERVER_DIR/
COPY ops.json $SERVER_DIR/
COPY server.properties $SERVER_DIR/
COPY run.sh $SERVER_DIR/
COPY eula.txt $SERVER_DIR/

RUN chmod 775 run.sh

EXPOSE 25565/tcp

CMD ["./run.sh"]