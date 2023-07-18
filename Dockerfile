FROM python:3
WORKDIR /usr/src/app
COPY . .
CMD ["python" ,"manage.py" ,"makemigrations"]
CMD ["python","manage.py","migrate"]
CMD ["python","manage.py","runserver"]
