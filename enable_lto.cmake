cmake_minimum_required(VERSION 3.16)

function(enable_lto_globally)
    if(ipo_supported)
        if(POLICY CMP0069)
            cmake_policy(SET CMP0069 NEW)
            set(CMAKE_POLICY_DEFAULT_CMP0069 NEW)
        endif(POLICY CMP0069)

        set(CMAKE_INTERPROCEDURAL_OPTIMIZATION TRUE)
    endif()
endfunction(enable_lto_globally)
