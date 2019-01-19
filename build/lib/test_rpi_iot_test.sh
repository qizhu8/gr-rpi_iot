#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/lib
export PATH=/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/build/lib:$PATH
export LD_LIBRARY_PATH=/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH
test-rpi_iot 
