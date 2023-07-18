FROM python:3
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /usr/src/app
COPY . .
RUN python manage.py makemigrations
RUN python manage.py migrate
RUN python manage.py createsuperuser
RUN python manage.py runserver
CMD ["python","manage.py"]
EXPOSE 8000
