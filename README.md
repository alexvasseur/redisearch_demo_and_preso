# Redisearch Demo with Presentation

### Presentation

|File |Information |
|--|--|
|docs/RediSearch.pdf|PDF presentation|
|docs/RediSearchPresentation.html|HTML (open in browser)|
| | |


## Running with Docker

### Prerequisites 
- [Docker](https://www.docker.com/products/docker-desktop)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Running Dockerized Version

```
git clone https://github.com/maguec/redisearch_demo_and_preso
cd redisearch_demo_and_preso
docker-compose up
```

Redis Insight is running on port 8001 using Redis Stack container.
[Redis Insight](http://localhost:8001)

The application is running on port 5000
[Application web UI](http://localhost:5000)



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

### Start the flask app

```
python3 app.py 
```

### Navigate to the home page

1) [Webapp](http://localhost:5000)

2) Data will automatically load if the key is not already present

3) Start typing in the text box

### Redis Insight

Redis Insight is [running](http://localhost:8001) as well

