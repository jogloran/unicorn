if(NOT DEFINED PIMORONI_PICO_PATH)
set(PIMORONI_PICO_PATH ${CMAKE_CURRENT_LIST_DIR}/../pimoroni-pico)
endif()
include(${PIMORONI_PICO_PATH}/pimoroni_pico_import.cmake)

include_directories(${CMAKE_CURRENT_LIST_DIR}/../../)
include_directories(${PIMORONI_PICO_PATH}/micropython)

# Drivers, etc
list(APPEND CMAKE_MODULE_PATH "${PIMORONI_PICO_PATH}")
# modules_py/modules_py
list(APPEND CMAKE_MODULE_PATH "${PIMORONI_PICO_PATH}/micropython")
# All regular modules
list(APPEND CMAKE_MODULE_PATH "${PIMORONI_PICO_PATH}/micropython/modules")

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Essential
include(pimoroni_i2c/micropython)
include(pimoroni_bus/micropython)

# Pico Graphics Essential
include(bitmap_fonts/micropython)
include(picographics/micropython)

# Pico Graphics Extra
include(pngdec/micropython)
include(jpegdec/micropython)
include(qrcode/micropython/micropython)

# Sensors & Breakouts
include(breakout_encoder/micropython)
include(breakout_encoder_wheel/micropython)
include(breakout_ioexpander/micropython)
include(breakout_ltr559/micropython)
include(breakout_as7262/micropython)
include(breakout_as7343/micropython)
include(breakout_msa301/micropython)
include(breakout_pmw3901/micropython)
include(breakout_mics6814/micropython)
include(breakout_potentiometer/micropython)
include(breakout_rtc/micropython)
include(breakout_trackball/micropython)
include(breakout_sgp30/micropython)
include(breakout_bh1745/micropython)
include(breakout_bme69x/micropython)
include(breakout_bme68x/micropython)
include(breakout_bme280/micropython)
include(breakout_bmp280/micropython)
include(breakout_icp10125/micropython)
include(breakout_scd41/micropython)
include(breakout_vl53l5cx/micropython)

# Utility
include(adcfft/micropython)

# Unicorn driver. Note: The UNICORN var must be set in mpconfigboard.cmake
include(${UNICORN}_unicorn/micropython)

# Must call `enable_ulab()` to enable
include(micropython-common-ulab)
enable_ulab()

# C++ Magic Memory
include(cppmem/micropython)

include(cxx_terminate/micropython)
target_link_options(usermod INTERFACE -specs=nano.specs)
