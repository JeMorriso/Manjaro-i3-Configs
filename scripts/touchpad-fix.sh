#!/bin/sh

if [ "${1}" == "pre" ]; 
then
  # Do the thing you want before suspend here, e.g.:
  sudo modprobe -r psmouse

elif [ "${1}" == "post" ]; 
then
  # Do the thing you want after resume here, e.g.:
  sudo modprobe psmouse 
fi
