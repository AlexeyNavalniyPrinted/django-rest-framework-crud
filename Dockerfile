FROM python:3.6-slim

EXPOSE 8000

WORKDIR /app
COPY api/requirements.txt /app

RUN pip3 install -r requirements.txt --no-cache-dir

RUN useradd api -u 1000 --user-group

RUN mkdir -p /etc/secrets/certs && chmod 0700 /etc/secrets/certs

COPY api /app

USER api

CMD python manage.py makemigrations && python manage.py migrate && python manage.py runserver