# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/media/ubuntu/large/radio-zcu208/platform/psu_cortexr5_0/psu_cortexr5_0/bsp/include/metal"
  "/media/ubuntu/large/radio-zcu208/platform/psu_cortexr5_0/psu_cortexr5_0/bsp/include/sleep.h"
  "/media/ubuntu/large/radio-zcu208/platform/psu_cortexr5_0/psu_cortexr5_0/bsp/include/xiltimer.h"
  "/media/ubuntu/large/radio-zcu208/platform/psu_cortexr5_0/psu_cortexr5_0/bsp/include/xtimer_config.h"
  "/media/ubuntu/large/radio-zcu208/platform/psu_cortexr5_0/psu_cortexr5_0/bsp/lib/libmetal.a"
  "/media/ubuntu/large/radio-zcu208/platform/psu_cortexr5_0/psu_cortexr5_0/bsp/lib/libxiltimer.a"
  "/media/ubuntu/large/radio-zcu208/platform/psu_cortexr5_0/psu_cortexr5_0/bsp/lib/metal.a"
  )
endif()
