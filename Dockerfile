FROM matrixdotorg/synapse:latest

COPY homeserver.yaml /data/homeserver.yaml

RUN chown -R 991:991 /data

EXPOSE 8008

ENTRYPOINT ["/start.py"]
