/* -*- c++ -*- */

#define RPI_IOT_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "rpi_iot_swig_doc.i"

%{
#include "rpi_iot/SER.h"
#include "rpi_iot/BER_bbf.h"
#include "rpi_iot/QPSK_Decoder_cb.h"
#include "rpi_iot/BPSK_Decoder_cb.h"
%}


%include "rpi_iot/SER.h"
GR_SWIG_BLOCK_MAGIC2(rpi_iot, SER);
%include "rpi_iot/BER_bbf.h"
GR_SWIG_BLOCK_MAGIC2(rpi_iot, BER_bbf);
%include "rpi_iot/QPSK_Decoder_cb.h"
GR_SWIG_BLOCK_MAGIC2(rpi_iot, QPSK_Decoder_cb);
%include "rpi_iot/BPSK_Decoder_cb.h"
GR_SWIG_BLOCK_MAGIC2(rpi_iot, BPSK_Decoder_cb);
