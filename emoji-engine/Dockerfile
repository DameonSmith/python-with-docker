FROM python:3.6-slim

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

LABEL maintainer="Dameon Smith" \
      version="1.0"

VOLUME ["/app/public"]


CMD flask run --host=0.0.0.0 --port=5000

