#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "rpm::librpmio" for configuration ""
set_property(TARGET rpm::librpmio APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(rpm::librpmio PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/librpmio.so.10.0.2"
  IMPORTED_SONAME_NOCONFIG "librpmio.so.10"
  )

list(APPEND _cmake_import_check_targets rpm::librpmio )
list(APPEND _cmake_import_check_files_for_rpm::librpmio "${_IMPORT_PREFIX}/lib/librpmio.so.10.0.2" )

# Import target "rpm::librpm" for configuration ""
set_property(TARGET rpm::librpm APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(rpm::librpm PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/librpm.so.10.0.2"
  IMPORTED_SONAME_NOCONFIG "librpm.so.10"
  )

list(APPEND _cmake_import_check_targets rpm::librpm )
list(APPEND _cmake_import_check_files_for_rpm::librpm "${_IMPORT_PREFIX}/lib/librpm.so.10.0.2" )

# Import target "rpm::librpmbuild" for configuration ""
set_property(TARGET rpm::librpmbuild APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(rpm::librpmbuild PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/librpmbuild.so.10.0.2"
  IMPORTED_SONAME_NOCONFIG "librpmbuild.so.10"
  )

list(APPEND _cmake_import_check_targets rpm::librpmbuild )
list(APPEND _cmake_import_check_files_for_rpm::librpmbuild "${_IMPORT_PREFIX}/lib/librpmbuild.so.10.0.2" )

# Import target "rpm::librpmsign" for configuration ""
set_property(TARGET rpm::librpmsign APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(rpm::librpmsign PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/librpmsign.so.10.0.2"
  IMPORTED_SONAME_NOCONFIG "librpmsign.so.10"
  )

list(APPEND _cmake_import_check_targets rpm::librpmsign )
list(APPEND _cmake_import_check_files_for_rpm::librpmsign "${_IMPORT_PREFIX}/lib/librpmsign.so.10.0.2" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
