FROM resin/rpi-raspbian:jessie-2015-05-04

COPY . /usr/src/app
WORKDIR /usr/src/app

CMD ./prestart.sh && ./start.sh
