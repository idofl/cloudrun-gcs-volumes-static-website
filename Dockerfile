# Use the official Nginx image.
# https://hub.docker.com/_/nginx
FROM nginx:latest

# Install tini
RUN apt-get update && apt-get install -y tini && \
    apt-get clean

COPY default.conf.template /etc/nginx/conf.d/

# Copy local code to the container image.
WORKDIR /app

# Copy local code to the container image.
COPY run.sh ./

# Ensure the script is executable
RUN chmod +x /app/run.sh

# Use tini to manage zombie processes and signal forwarding
# https://github.com/krallin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

# Pass the wrapper script as arguments to tini
CMD ["/app/run.sh"]
