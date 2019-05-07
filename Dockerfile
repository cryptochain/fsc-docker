FROM openjdk:8-jre-alpine

RUN groupadd -r fsc && useradd -r -m -g fsc fsc

# create data directory
ENV FSC_DATA /home/fsc/bc
RUN mkdir $FSC_DATA -p \
	&& chown -R fsc:fsc $FSC_DATA

COPY docker-entrypoint.sh /home/fsc/entrypoint.sh
COPY fsc_node.jar /home/fsc/fsc_node.jar
ENTRYPOINT ["/home/fsc/entrypoint.sh"]

EXPOSE 8332 8333 18332 18333
