FROM jenkins/jenkins:lts

# Switch to root user to install packages
USER root

# Install Node.js & npm
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Optional: verify install
RUN node -v && npm -v

# Switch back to Jenkins user
USER jenkins
