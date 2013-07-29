set(CMAKE_SYSTEM_NAME Linux)

set(CMAKE_C_COMPILER "gcc")
set(CMAKE_CXX_COMPILER "g++")

set(CMAKE_SHARED_COMPILER_FLAGS "-m32 -L/usr/lib32")
set(CMAKE_SHARED_LINKER_FLAGS "-m32 -L/usr/lib32")

set(TARGET_ARCHITECTURE "x86")

#set(CMAKE_FIND_ROOT_PATH /usr/lib32)
#set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
#set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
#set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)