# De-duplication Service

This service is not meant to be implemented into production!

This service is a very crude example of de-duplication on a specified identifier.

The service will store the identifier for future lookups and respond with a simplified payload indicating if this identifer has already been processed.

## Setup

Install all the service dependencies

```sh
yarn install
```

Start the service

```sh
yarn start
```
