# cmake debug utility (last resort though)
# prints all cmake variables
get_cmake_property(_variableNames VARIABLES)
list(SORT _variableNames)

foreach(_variableName ${_variableNames})
    message("${_variableName}=${${_variableName}}")
endforeach()
