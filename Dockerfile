FROM python:3

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /usr/src/app

COPY . .

RUN pip install -r requirements.txt

RUN python manage.py makemigrations
RUN python manage.py migrate
#RUN python manage.py createsuperuser 
#RUN python manage.py runserver

EXPOSE 8000
CMD python manage.py runserver 0.0.0.0:8000
