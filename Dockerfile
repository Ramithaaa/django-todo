FROM python:3
WORKDIR /usr/src/app
COPY . .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN python manage.py makemigrations
RUN python manage.py migrate
RUN python manage.py createsuperuser
EXPOSE 8000
CMD ["python", "manage.py", "runserver"]
