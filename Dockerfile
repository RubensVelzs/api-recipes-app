FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

#Dependences 

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

#Creating a directory to storage the code
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user