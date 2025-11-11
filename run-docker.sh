#!/usr/bin/env bash

FROM python:3.11-slim
WORKDIR /srv
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV PORT=8080
CMD ["functions-framework","--target=hello","--port=8080"]
