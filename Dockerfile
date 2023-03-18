# syntax=docker/dockerfile:1

# FROM python:3.10-alpine
# FROM amd64/python:3.10.10-alpine3.17
FROM python:3.10.10-windowsservercore-ltsc2022
# FROM python:3.7-windowsservercore-1809 

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT ["python", "./app.py"] 
EXPOSE 5555
# CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]