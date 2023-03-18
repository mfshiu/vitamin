# syntax=docker/dockerfile:1

# FROM python:3.10-alpine
# FROM amd64/python:3.10.10-alpine3.17
FROM python:3.10.10-windowsservercore-ltsc2022
# FROM python:3.7-windowsservercore-1809 

WORKDIR /app

COPY requirements.txt ./
# RUN pip3 install --upgrade pip
# RUN python3 -m pip install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt --user 

COPY . .

ENTRYPOINT ["python", "./app.py"] 
EXPOSE 5555
# CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]