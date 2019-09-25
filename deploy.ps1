# build our local Docker image
docker build -t dj-docker-to-heroku -f Dockerfile .


# push a container to heroku
heroku container:push web -a dj-docker


# promote the container 
heroku container:release web -a dj-heroku-docker


# run migrations
heroku run python3 manage.py migrate -a dj-docker
