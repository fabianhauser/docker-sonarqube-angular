FROM sonarqube:alpine

ARG SONARTS_VERSION=1.0.0

# http://stackoverflow.com/a/39244439
RUN echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' > /etc/nsswitch.conf

#RUN apk add --no-cache 
ADD https://github.com/Pablissimo/SonarTsPlugin/releases/download/v${SONARTS_VERSION}/sonar-typescript-plugin-${SONARTS_VERSION}.jar /opt/sonarqube/extensions/plugins/
