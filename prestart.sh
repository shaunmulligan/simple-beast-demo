#!/bin/bash

udevd --daemon

modprobe spi-bcm2708
modprobe fbtft_device name=pitft verbose=0 rotate=270
