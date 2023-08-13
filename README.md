# Payoneer home assignment - counter-service

`counter-service` maintains a web
page with a counter of the amount of POST requests it served, and return it on every
GET request it gets. 

## CI\CD Approach

The service's tests and deployment is executed using Azure DevOps Pipelines

## Local Setup and Test

- install `docker` client
- `docker build -f ./app/counter-service.Dockerfile -t counter-service .`
- `docker run -p 80:80 counter-service:latest`
- At this point, the container will run the flask app.
- You may test the counter service functionality by executing locally:
  - `curl localhost:80` (expected output: `Counter value: 0`)
  - `curl -X POST localhost:80` (expected output: `This counter now increased`)
  - `curl localhost:80` (expected output: `Counter value: 1`)
- Now, you may exit the container by pressing `Ctrl+C`