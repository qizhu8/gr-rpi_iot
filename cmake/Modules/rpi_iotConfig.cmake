INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_RPI_IOT rpi_iot)

FIND_PATH(
    RPI_IOT_INCLUDE_DIRS
    NAMES rpi_iot/api.h
    HINTS $ENV{RPI_IOT_DIR}/include
        ${PC_RPI_IOT_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    RPI_IOT_LIBRARIES
    NAMES gnuradio-rpi_iot
    HINTS $ENV{RPI_IOT_DIR}/lib
        ${PC_RPI_IOT_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(RPI_IOT DEFAULT_MSG RPI_IOT_LIBRARIES RPI_IOT_INCLUDE_DIRS)
MARK_AS_ADVANCED(RPI_IOT_LIBRARIES RPI_IOT_INCLUDE_DIRS)

