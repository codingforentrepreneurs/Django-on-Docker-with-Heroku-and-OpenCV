# build our heroku-ready local Docker image
docker build -t dj-docker-to-heroku -f Dockerfile .


# push your directory container for the web process to heroku
heroku container:push web -a dj-heroku-docker


# promote the web process with your container 
heroku container:release web -a dj-heroku-docker


# run migrations
heroku run python3 manage.py migrate -a dj-heroku-docker
