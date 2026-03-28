#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "nghttp2::nghttp2" for configuration "RelWithDebInfo"
set_property(TARGET nghttp2::nghttp2 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(nghttp2::nghttp2 PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libnghttp2.so.14.28.0"
  IMPORTED_SONAME_RELWITHDEBINFO "libnghttp2.so.14"
  )

list(APPEND _cmake_import_check_targets nghttp2::nghttp2 )
list(APPEND _cmake_import_check_files_for_nghttp2::nghttp2 "${_IMPORT_PREFIX}/lib/libnghttp2.so.14.28.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
