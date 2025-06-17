

set(STM32_MCU_FLAGS  "-mcpu=cortex-m33 -mfpu=fpv4-sp-d16 -mfloat-abi=hard " )
set(STM32_LINKER_SCRIPT "${CMAKE_CURRENT_LIST_DIR}/STM32U585xx_FLASH_ns.ld")
set(STM32_LINKER_OPTION )
