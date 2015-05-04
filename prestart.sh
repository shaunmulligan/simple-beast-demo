#!/bin/bash

udevd --daemon

modprobe spi-bcm2708
modprobe fbtft_device name=pitft verbose=0 rotate=270

fbi -d /dev/fb1 -T 1 -noverbose -a resin.jpg
