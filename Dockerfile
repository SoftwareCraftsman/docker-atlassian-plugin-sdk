FROM openjdk@sha256:27db23b865fb1691ea72e4ff5db27a442e97819d7a29b57dc7ea5ddc4cd1f210
MAINTAINER Software Craftsmen GmbH und CoKG <martin.ahrer@software-craftsmen.at>

# BEGIN install atlassian plugin sdk

RUN apt-get update && \
    curl https://packages.atlassian.com/list/atlassian-sdk-deb/deb-archive/atlassian-plugin-sdk_6.3.7_all.deb -O && \
    dpkg -i atlassian-plugin-sdk_6.3.7_all.deb

