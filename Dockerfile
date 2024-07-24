FROM ubuntu:20.04
USER root

RUN apt update
RUN apt install -y python3.9
RUN apt install -y python3-pip
RUN apt install -y firefox
RUN apt install -y x11-apps


COPY requirements.txt .
RUN python3.9 -m pip install -r requirements.txt

ENV SITE_DOMAIN=vtuber.supu.com
WORKDIR /var

ADD https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data .

#COPY script.py .
#ENTRYPOINT ["python3.9", "script.py"]