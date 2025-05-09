FROM python:3.12-alpine
LABEL authors="ivanmiletic"

COPY requirements.txt app/
WORKDIR app/

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000