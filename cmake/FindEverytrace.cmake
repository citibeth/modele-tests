# Input Variables
#    EVERYTRACE_ROOT
# Produces:
#    EVERYTRACE_LIBRARY
#    EVERYTRACE_INCLUDE_DIR


FIND_PATH(EVERYTRACE_INCLUDE_DIR everytrace.h
        HINTS ${EVERYTRACE_ROOT}/include)

get_filename_component(EVERYTRACE_ROOT ${EVERYTRACE_INCLUDE_DIR} DIRECTORY)

FIND_LIBRARY(EVERYTRACE_LIBRARY NAMES everytrace
        HINTS ${EVERYTRACE_ROOT}/lib)

foreach (VARIANT c cf c_mpi cf_mpi)
    FIND_FILE(EVERYTRACE_${VARIANT}_REFADDR NAMES everytrace_${VARIANT}_refaddr.o
            HINTS ${EVERYTRACE_ROOT}/lib)
endforeach()
