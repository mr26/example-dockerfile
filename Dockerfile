FROM tiangolo/uwsgi-nginx-flask:python2.7   

COPY main.py /app    

RUN pip install awscli && pip install boto3

EXPOSE 80

ENV AWS_SECRET_ACCESS_KEY=''

ENV AWS_ACCESS_KEY_ID=''

ENV AWS_DEFAULT_REGION='us-east-1'


## FROM - Initiliazes a new build stage and sets the base image for subsequent instructions.  Every Dockerfile must start with FROM.

## COPY - copies new files or directories from <src> and adds them to the filesystem of the container at the path <dest>.  Here we
## are copying our application code, main.py, to the /app directory in the container.

## RUN - will execute any commands in a new layer on top of the current image and commit the results.  These commands are run within the
## container.

## ENV - sets the environment variable within the container.


