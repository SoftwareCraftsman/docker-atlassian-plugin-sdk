# README

[![](https://badge.imagelayers.io/softwarecraftsmen/atlassian-plugin-sdk:latest.svg)](https://imagelayers.io/?images=softwarecraftsmen/atlassian-plugin-sdk:latest)

## Prepare a docker host

```sh
docker-machine create --driver virtualbox atlassian <1>
docker-machine start atlassian <2>
eval `docker-machine env atlassian` <3>
```

1. Create a docker machine (once only)
2. Start the docker machine
3. Setup the docker client to use the docker-machine

## Run a Atlassian Plugin SDK instance

```sh
docker pull softwarecraftsmen/atlassian-plugin-sdk
docker run -it --name plugin-sdk  softwarecraftsmen/atlassian-plugin-sdk
```
