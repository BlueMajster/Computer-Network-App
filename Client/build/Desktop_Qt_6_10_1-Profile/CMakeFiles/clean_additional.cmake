# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "RelWithDebInfo")
  file(REMOVE_RECURSE
  "CMakeFiles/appClient_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appClient_autogen.dir/ParseCache.txt"
  "appClient_autogen"
  )
endif()
