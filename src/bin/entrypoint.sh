#! /bin/bash

python manage.py migrate
python manage.py collectstatic --noinput
gunicorn config.wsgi --bind=0.0.0.0:8080
