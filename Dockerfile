FROM openjdk:8-jre-alpine

RUN addgroup -S fsc && adduser -S fsc -G fsc

USER fsc

COPY docker-entrypoint.sh /home/fsc/entrypoint.sh
COPY fsc_node.jar /home/fsc/fsc_node.jar
ENTRYPOINT ["/home/fsc/entrypoint.sh"]

EXPOSE 8332 8333 18332 18333
