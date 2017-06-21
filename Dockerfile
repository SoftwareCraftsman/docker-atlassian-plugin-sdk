FROM buildpack-deps:jessie
MAINTAINER Software Craftsmen GmbH und CoKG <martin.ahrer@software-craftsmen.at>

# BEGIN install atlassian plugin sdk

RUN apt-get update && \
    apt-get install -y apt-transport-https && \
    echo "deb https://sdkrepo.atlassian.com/debian/ stable contrib" >> /etc/apt/sources.list.d/atlassian-plugin-sdk.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B07804338C015B73 && \
    apt-get update && \
    apt-get install -y atlassian-plugin-sdk=6.2.14 && \
    rm -rf /var/lib/apt/lists/*
