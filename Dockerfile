FROM centos


RUN yum install -y git unzip


## Install SonarScanner

ENV INSTALLER="https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.0.0.1744-linux.zip" \
    SONAR_HOME="/opt/sonar-scanner"
ENV PATH=$SONAR_HOME/bin:$PATH

ADD $INSTALLER /tmp
WORKDIR /tmp

RUN unzip -q sonar-scanner-cli-*-linux.zip && \
    rm sonar-scanner-cli-*-linux.zip && \
    mv sonar-scanner-*-linux $SONAR_HOME 


