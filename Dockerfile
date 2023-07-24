FROM python:3

RUN pip install -r requirements.txt
COPY . .



RUN python manage.py migrate
#RUN python manage.py createsuperuser 
#RUN python manage.py runserver

EXPOSE 8000
CMD python manage.py runserver 0.0.0.0:8001
