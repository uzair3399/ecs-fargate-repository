# Use an official Jenkins agent image as the base image
FROM jenkins/inbound-agent:latest

# Switch to root user for installation
USER root

# Install any additional tools or dependencies needed for your build environment
# For example, if you need Git and Maven:
RUN apt-get update && \
    apt-get install -y git maven && \
    rm -rf /var/lib/apt/lists/*

# Switch back to the Jenkins user
USER jenkins
