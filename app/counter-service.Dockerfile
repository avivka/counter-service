FROM python:3.10.8-slim-buster
WORKDIR /counter-service

COPY ./app/requirements.txt ./app/requirements.txt
RUN pip3 install -r ./app/requirements.txt

COPY ./app ./app

EXPOSE 80

CMD [ "python3", "./app/counter-service.py"]