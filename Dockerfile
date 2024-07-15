FROM python:3.6-slim

EXPOSE 8080

WORKDIR /app
COPY api/requirements.txt /app

RUN pip3 install -r requirements.txt --no-cache-dir

COPY api /app

ENTRYPOINT ["python3"]


CMD ["manage.py", "runserver"]
