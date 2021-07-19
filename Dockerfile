FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /entity_validator_api_service
WORKDIR /entity_validator_api_service/
ADD . /entity_validator_api_service/
RUN pip install -r requirements.txt
EXPOSE 8080
RUN python manage.py migrate
ENTRYPOINT ["python", "manage.py","runserver","0.0.0.0:8080"]
