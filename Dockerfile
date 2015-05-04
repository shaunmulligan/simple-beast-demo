FROM resin/rpi-node:0.10.38

RUN apt-get update && apt-get install -y fbi \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN DEBIAN_FRONTEND=noninteractive JOBS=MAX npm install --unsafe-perm
COPY . /usr/src/app

CMD [ "npm", "start" ]
