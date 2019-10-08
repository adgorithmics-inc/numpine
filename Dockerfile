FROM python:3.6.8-alpine

RUN apk --update --no-cache add \
    bash \
    linux-headers \
    git \
    ncurses-dev \
    libxslt-dev \
    postgresql-dev \
    libjpeg-turbo-dev \
    ffmpeg \
    nodejs-npm \
    g++ \
    file-dev \
    gcc

RUN pip install --upgrade pip

RUN pip install -U uwsgi

RUN pip install numpy
