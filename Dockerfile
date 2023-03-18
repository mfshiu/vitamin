# syntax=docker/dockerfile:1

# FROM python:3.10-alpine
# FROM amd64/python:3.10.10-alpine3.17
FROM python:3.10.10-windowsservercore-ltsc2022

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]