# README

## Prepare a docker host

```sh
docker-machine create --driver virtualbox atlassian <1>
docker-machine start atlassian <2>
eval `docker-machine env atlassian` <3>
```

1. Create a docker machine (once only)
2. Start the docker machine
3. Setup the docker client to use the docker-machine

## Build the Atlassian Plugin SDK image

```sh
docker-compose build
```

## Run a Atlassian Plugin SDK instance

```sh
docker run -ti --rm --workdir /project -v dot_m2:/root/.m2 -v $PWD:/project softwarecraftsmen/atlassian-plugin-sdk bash -c "atlas-mvn -version"
```
