# Sinatra Docker Compose Example

Trying to run Sinatra, PostgreSQL, and Redis in a Docker Compose development environment rather than a VirtualBox VM.

Following the Docker Compose and Rails quickstart guide https://docs.docker.com/compose/rails/#define-the-project

## Progress

```
docker-compose up
```

```
docker run --rm -p 8080:4567 -v ${PWD}:/app:ro sinatra-docker-compose:latest
```
