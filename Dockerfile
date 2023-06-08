FROM python:3.9-slim-buster

WORKDIR /Projects/django-today

RUN pip install django==3.2

copy . /Projects/django-today

RUN python manage.py makemigrations

CMD ["python", "manage.py", "runserver", "0.0.0.0:8004"] 


