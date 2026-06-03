FROM matrixdotorg/synapse:latest

# ← forces rebuild of all layers below when you change the date
ARG CACHE_BUST=1

COPY homeserver.yaml /data/homeserver.yaml
COPY log.config      /data/log.config

RUN chown -R 991:991 /data

EXPOSE 8008

ENV SYNAPSE_LOG_LEVEL=INFO
ENV SYNAPSE_CONFIG_PATH=/data/homeserver.yaml

ENTRYPOINT ["/start.py"]
