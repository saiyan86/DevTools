# Use a minimal image as a parent image
FROM golang:1.10

# Install dependencies.
RUN apt-get update
RUN apt-get install -y iptables
RUN apt-get install -y ipset

# Run bash shell
ENTRYPOINT ["/bin/bash"]