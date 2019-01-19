/* -*- c++ -*- */

#define RPI_IOT_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "rpi_iot_swig_doc.i"

%{
#include "rpi_iot/SER.h"
%}


%include "rpi_iot/SER.h"
GR_SWIG_BLOCK_MAGIC2(rpi_iot, SER);
