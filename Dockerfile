FROM sonarqube:alpine

ARG SONARTS_VERSION=1.0.0

#RUN apk add --no-cache 
ADD https://github.com/Pablissimo/SonarTsPlugin/releases/download/v${SONARTS_VERSION}/sonar-typescript-plugin-${SONARTS_VERSION}.jar /opt/sonarqube/extensions/plugins/
