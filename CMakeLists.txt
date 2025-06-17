cmake_minimum_required(VERSION 3.12)
project(embedded-cmake LANGUAGES C ASM)

# See: https://stackoverflow.com/questions/47611209/cmake-multiple-option-setting
# See: https://www.kitware.com//constraining-values-with-comboboxes-in-cmake-cmake-gui/
set(BOARD_TYPE "stm32u5-tz" CACHE STRING "Type of embedded controller board")
set_property(CACHE BOARD_TYPE PROPERTY STRINGS "stm32u5-tz")

message(STATUS "Board Type is: ${BOARD_TYPE}")
include("${CMAKE_SOURCE_DIR}/board/${BOARD_TYPE}")

