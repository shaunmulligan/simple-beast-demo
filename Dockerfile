FROM resin/rpi-node:0.10.38-onbuild

RUN apt-get update && apt-get install -y fbi \
  && rm -rf /var/lib/apt/lists/*
