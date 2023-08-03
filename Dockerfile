# syntax=docker/dockerfile:1

FROM python:3.11.3-slim

WORKDIR /app

COPY app/requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "-m", "flask", "run". "--host=0.0.0.0" ]