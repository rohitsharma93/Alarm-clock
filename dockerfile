FROM python:3.8.10
RUN pip install --upgrade pip
RUN pip install Django==4.1
RUN pip install mysql-connector-python
RUN django-admin startproject myproject .
EXPOSE 8088
CMD ["python", "manage.py", "runserver", "0.0.0.0:8092"]
