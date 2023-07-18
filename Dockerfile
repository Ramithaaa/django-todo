FROM python:3.8
WORKDIR /usr/src/app
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
COPY . .
RUN pip install -r requirements.txt
RUN python manage.py makemigrations
RUN python manage.py migrate
#RUN python manage.py createsuperuser 
#RUN python manage.py runserver

EXPOSE 8000
CMD ["python", "./usr/src/app/manage.py", "runserver","0.0.0.0:8000"]
