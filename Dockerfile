# syntax=docker/dockerfile:1

FROM python:latest
# FROM python:3.9.16-slim-buster
# FROM python:3.10-slim

WORKDIR /app

# COPY requirements.txt requirements.txt
# RUN pip3 install -r requirements.txt
RUN pip install flask

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]