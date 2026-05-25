
FROM matrixdotorg/synapse:latest
 
# Copy our config
COPY homeserver.yaml /data/homeserver.yaml
 
# Generate signing key on build
RUN python -m synapse.app.homeserver \
    --config-path /data/homeserver.yaml \
    --generate-keys 2>/dev/null || true
 
EXPOSE 8008
 
CMD ["python", "-m", "synapse.app.homeserver", \
     "--config-path", "/data/homeserver.yaml"]
