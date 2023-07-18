FROM python:3
WORKDIR /usr/src/app
RUN apt install django -y
COPY . .
RUN python manage.py makemigrations
RUN python manage.py migrate
RUN python manage.py createsuperuser
RUN python manage.py runserver
CMD ["python","manage.py"]
EXPOSE 8000
