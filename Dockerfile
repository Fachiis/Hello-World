#Pull base image
FROM python:3.8

#Set environment variable 
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


#Set working directory
WORKDIR /code/

#Install the needed dependencies 
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system

#Copy our project
COPY . /code/



