# gr-rpi_iot

This is the repository storing all the OOT modules designed for ECSE 4964/6964 lab.

## What is in this repository?

### SER block
SER block takes in two byte streams and compute the ratio of sysmbol error. This block only exams the most window\_size symbols.

## How to use?
$ mkdir build
$ cd build
$ cmake ..
$ make
$ sudo make install
$ sudo ldconfig

Open gnuradio-companion or click the "refresh" button. If everthing is correct, you should find a block named "SER" in your block list.

## Troubleshooting
### Why I cannot find the block?
1. Have you linked the library? I.e. $ sudo ldconfig
2. Has the block installation directory in gnuradio-companion's search list? You are supposed to check the return value when executing $sudo make install. The path to pay attention to is that XML file named "rpi\_iot\_SER.xml" is installed in. Also, the search directories for gnuradio-companion are in ~/.gnuradio/config.conf under "[grc]" variables "global\_blocks\_path" and "local\_blocks\_path".
The installation path should be either the "global\_blocks\_path" or "local\_blocks\_path"

