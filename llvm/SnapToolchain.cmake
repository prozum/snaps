set(CMAKE_SYSTEM_NAME Linux)

set(CMAKE_SYSROOT $ENV{SNAP})

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# pthread
set(THREADS_PTHREAD_ARG 0)
