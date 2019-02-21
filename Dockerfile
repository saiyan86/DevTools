# Use a minimal image as a parent image
FROM quay.io/deis/go-dev:latest

# Install dependencies.
RUN apt-get update
RUN apt-get install -y iptables
RUN apt-get install -y ipset

# Run bash shell
ENTRYPOINT ["/bin/bash"]