# Redisearch Demo with Presentation

A sample application for RediSearch showing index and queries for Redis, suggestion and auto-completion, full text search and fuzzy search, as well as aggregations.

## Running with Docker

### Prerequisites 
- [Docker](https://www.docker.com/products/docker-desktop)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Running Dockerized Version

```
docker compose up
```

Redis Insight is running on port 8001 using Redis Stack container.
[Redis Insight](http://localhost:8001)

The application is running on port 8080
[Application web UI](http://localhost:8080)



## Running Locally

### Starup docker container

```
docker run --rm -p 6379:6379 -p 8001:8001 redis/redis-stack:latest
```

### Install python requirements

```
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
```
or
```
pipenv install -r requirements.txt
pipenv run python3 -m pip install setuptools
pipenv run python app.py
```

### Start the flask app

```
python3 app.py 
```

### Navigate to the home page

[Webapp](http://localhost:8080)

### Redis Insight

Redis Insight is [running](http://localhost:8001) as well

