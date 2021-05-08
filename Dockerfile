FROM python:3.8-slim-buster

COPY . /app

WORKDIR /app

RUN python setup.py develop

ENTRYPOINT [ "yocli" ]
