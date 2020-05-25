FROM python:3.8-alpine

LABEL author="Yunior A. Espinal"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /src
WORKDIR /src
COPY ./src /src/

RUN adduser -D user
USER user