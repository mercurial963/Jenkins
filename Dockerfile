from jenkins/jenkins:lts-jdk11

# Distributed Builds plugins
RUN jenkins-plugin-cli --plugins ssh-slaves

# install Notifications and Publishing plugins
RUN jenkins-plugin-cli --plugins email-ext
RUN jenkins-plugin-cli --plugins mailer
RUN jenkins-plugin-cli --plugins slack

# Artifacts
RUN jenkins-plugin-cli --plugins htmlpublisher

# UI
RUN jenkins-plugin-cli --plugins greenballs
RUN jenkins-plugin-cli --plugins simple-theme-plugin

# Scaling
RUN jenkins-plugin-cli --plugins kubernetes

# install Maven
# this command tells us that all the commands below will be run under a specific user
USER root 
RUN apt update && apt install -y maven
USER root