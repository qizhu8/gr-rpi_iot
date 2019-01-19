#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/python
export PATH=/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/build/python:$PATH
export LD_LIBRARY_PATH=/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/build/swig:$PYTHONPATH
/usr/bin/python2 /home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/python/qa_SER.py 
