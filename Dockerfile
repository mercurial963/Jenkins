from jenkins/jenkins:lts-jdk11

# Distributed Builds plugins
RUN jenkins-plugin-cli --plugins docker-workflow
RUN jenkins-plugin-cli --plugins ssh-slaves
RUN jenkins-plugin-cli --plugins workflow-aggregator
RUN jenkins-plugin-cli --plugins git
RUN jenkins-plugin-cli --plugins ssh-agent
RUN jenkins-plugin-cli --plugins git-parameter
RUN jenkins-plugin-cli --plugins multibranch-scan-webhook-trigger
# RUN jenkins-plugin-cli --plugins sonar 
RUN jenkins-plugin-cli --plugins git-parameter
RUN jenkins-plugin-cli --plugins anchore-container-scanner
RUN jenkins-plugin-cli --plugins dependency-check-jenkins-plugin




# install Notifications and Publishing plugins
# RUN jenkins-plugin-cli --plugins email-ext
# RUN jenkins-plugin-cli --plugins mailer
# RUN jenkins-plugin-cli --plugins slack


# Artifacts
RUN jenkins-plugin-cli --plugins htmlpublisher

# UI
RUN jenkins-plugin-cli --plugins greenballs
RUN jenkins-plugin-cli --plugins simple-theme-plugin

# Scaling
RUN jenkins-plugin-cli --plugins kubernetes
RUN jenkins-plugin-cli --plugins kubernetes-cli

# install Maven
# this command tells us that all the commands below will be run under a specific user
USER root
RUN apt update && apt install -y maven && apt install -y procps
USER jenkins