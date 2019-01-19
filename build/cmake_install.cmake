# Install script for directory: /home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/uone/Gnuradio/trunk")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/rpi_iot" TYPE FILE FILES "/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/cmake/Modules/rpi_iotConfig.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/build/include/rpi_iot/cmake_install.cmake")
  include("/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/build/lib/cmake_install.cmake")
  include("/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/build/swig/cmake_install.cmake")
  include("/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/build/python/cmake_install.cmake")
  include("/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/build/grc/cmake_install.cmake")
  include("/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/build/apps/cmake_install.cmake")
  include("/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/build/docs/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/uone/Gnuradio/gnuradioworkspace/OOT/gr-rpi_iot/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
