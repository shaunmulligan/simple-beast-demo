FROM resin/rpi-raspbian:jessie-2015-05-04

RUN apt-get update && apt-get install -y fbi \
  && rm -rf /var/lib/apt/lists/*

COPY . /usr/src/app

WORKDIR /usr/src/app

CMD ./prestart.sh && ./start.sh
