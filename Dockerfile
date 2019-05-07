FROM openjdk:latest

RUN useradd -m fsc && usermod -a -G fsc fsc

COPY docker-entrypoint.sh /home/fsc/entrypoint.sh
COPY fsc_node.jar /home/fsc/fsc_node.jar

RUN mkdir /home/fsc/bc
RUN chown -R fsc:fsc /home/fsc

USER fsc

EXPOSE 8332 8333 18332 18333

CMD "/home/fsc/entrypoint.sh"
