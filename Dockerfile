FROM python:3
#FROM nginx

RUN apt-get update && apt-get install bash -y
#RUN apt-get install python3 -y

EXPOSE 5000
#EXPOSE 80

RUN mkdir /app
WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY . /app

CMD python app.py
