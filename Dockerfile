FROM ubuntu:latest

MAINTAINER Sayed sayedsabirali096@gmail.com

RUN apt-get update
RUN apt-get install -y python-pip python-dev build-essential

RUN mkdir flask-app
COPY flask_app.py /flask-app
COPY requirements.txt /flask-app
WORKDIR /flask-app

RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["flask-app.py"]
