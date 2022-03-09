set(_q "")
if(GLEW_FIND_QUIETLY)
    set(_q QUIET)
endif()
find_package(GLEW ${GLEW_FIND_VERSION} CONFIG ${_q})

if(NOT GLEW_FIND_QUIETLY)
    if (NOT GLEW_FOUND)
        message(STATUS "Falling back to MODULE search for GLEW...")
    else()
        message(STATUS "GLEW found in ${GLEW_DIR}")
    endif()
endif()

if (NOT GLEW_FOUND)
    set(_modpath ${CMAKE_MODULE_PATH})
    set(CMAKE_MODULE_PATH "")
    include(FindGLEW)
    set(CMAKE_MODULE_PATH ${_modpath})
endif()