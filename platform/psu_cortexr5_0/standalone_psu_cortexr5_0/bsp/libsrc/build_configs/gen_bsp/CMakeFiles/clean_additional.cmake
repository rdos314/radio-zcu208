# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\radio-zcu208\\platform\\psu_cortexr5_0\\standalone_psu_cortexr5_0\\bsp\\include\\sleep.h"
  "C:\\radio-zcu208\\platform\\psu_cortexr5_0\\standalone_psu_cortexr5_0\\bsp\\include\\xiltimer.h"
  "C:\\radio-zcu208\\platform\\psu_cortexr5_0\\standalone_psu_cortexr5_0\\bsp\\include\\xtimer_config.h"
  "C:\\radio-zcu208\\platform\\psu_cortexr5_0\\standalone_psu_cortexr5_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
