FROM python:3.6-alpine

EXPOSE 8080

WORKDIR /app
COPY requirements.txt /app

RUN apk update && pip3 install -r requirements.txt --no-cache-dir

COPY . /app

ENTRYPOINT ["python3"]

CMD ["manage.py", "runserver"]
