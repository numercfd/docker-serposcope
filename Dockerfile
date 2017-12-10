FROM openjdk:8-jre

ENV DOCKER_SERPOSCOPE_VERSION 2.8.0
RUN mkdir -p /opt/serposcope && \
    curl -o /opt/serposcope/serposcope.jar https://serposcope.serphacker.com/download/$DOCKER_SERPOSCOPE_VERSION/serposcope-$DOCKER_SERPOSCOPE_VERSION.jar

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
