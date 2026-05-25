FROM matrixdotorg/synapse:latest
COPY homeserver.yaml /data/homeserver.yaml
COPY log.config /data/log.config
RUN chown -R 991:991 /data
EXPOSE 8008
ENTRYPOINT ["/start.py"]
