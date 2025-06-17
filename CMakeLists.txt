cmake_minimum_required(VERSION 3.12)
project(embedded-cmake LANGUAGES C ASM)


# Setup compiler settings
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE)


if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Debug")
endif()

# See: https://stackoverflow.com/questions/47611209/cmake-multiple-option-setting
# See: https://www.kitware.com//constraining-values-with-comboboxes-in-cmake-cmake-gui/
set(BOARD_TYPE "stm32u5-tz" CACHE STRING "Type of embedded controller board")
set_property(CACHE BOARD_TYPE PROPERTY STRINGS "stm32u5-tz")

message(STATUS "Board Type is: ${BOARD_TYPE}")
include("${CMAKE_SOURCE_DIR}/board/${BOARD_TYPE}/toolchain.cmake")

