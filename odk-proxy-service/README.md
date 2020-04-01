# ODK Proxy Service

This service is not meant to be implemented into production!

This service is intended as an ODK proxy for responding with an 200 Accepted code

ODK only accepts a status code of 200 otherwise it sees the request as failed and tries sending it again

## Setup

Install all the service dependencies

```sh
yarn install
```

Start the service

```sh
yarn start
```

### Docker

Build the docker image

```sh
docker build -t jembi/odk-proxy-service:latest .
```

Run the docker container

```sh
docker run -it -p 3310:3310 jembi/odk-proxy-service:latest
```
