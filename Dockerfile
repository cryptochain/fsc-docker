FROM openjdk:latest

RUN addgroup -S fsc && adduser -S fsc -G fsc

COPY docker-entrypoint.sh /home/fsc/entrypoint.sh
COPY fsc_node.jar /home/fsc/fsc_node.jar

RUN chown -R fsc:fsc /home/fsc

USER fsc

EXPOSE 8332 8333 18332 18333

CMD "/home/fsc/entrypoint.sh"
