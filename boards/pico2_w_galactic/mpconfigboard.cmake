# cmake file for Pimoroni Inky with Raspberry Pi Pico W
set(MICROPY_BOARD RPI_PICO_W)
set(PICO_BOARD "pico2_w")
set(UNICORN "galactic")

# The C malloc is needed by cyw43-driver Bluetooth and Pimoroni Pico modules
set(MICROPY_C_HEAP_SIZE 4096)

if(NOT DEFINED MICROPY_HW_FLASH_STORAGE_BYTES)
    set(MICROPY_HW_FLASH_STORAGE_BYTES 2097152)  # 2 * 1024 * 1024, of 4MB
endif()

set(MICROPY_PY_LWIP ON)
set(MICROPY_PY_NETWORK_CYW43 ON)

# Bluetooth
set(MICROPY_PY_BLUETOOTH ON)
set(MICROPY_BLUETOOTH_BTSTACK ON)
set(MICROPY_PY_BLUETOOTH_CYW43 ON)

# Board specific version of the frozen manifest
set(MICROPY_FROZEN_MANIFEST ${MICROPY_BOARD_DIR}/manifest.py)

# dir2uf2 manifest and root directory
set(PIMORONI_UF2_MANIFEST ${CMAKE_CURRENT_LIST_DIR}/manifest.txt)
set(PIMORONI_UF2_DIR ${CMAKE_CURRENT_LIST_DIR}/../../examples/${UNICORN}_unicorn/launch)
include(${CMAKE_CURRENT_LIST_DIR}/../common.cmake)