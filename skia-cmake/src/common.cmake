# This file contains utility functions for generating cpp files from headers
# This is useful for header-only libraries
function(generate_cpp_files_for_header_list name headers)

    # List to hold generated cpp files
    set(generated_cpp_files "")

    foreach(hdr ${headers})

        # Get the corresponding .cpp file path for this header
        string(REGEX REPLACE ".h$" ".cpp" cpp ${hdr})

        # Copy the header to .cpp
        configure_file(${hdr} ${cpp} COPYONLY)
        message(STATUS "Generated ${cpp} for ${hdr}")

        list(APPEND generated_cpp_files ${cpp})
    endforeach()

    set(${name} ${generated_cpp_files} PARENT_SCOPE)
endfunction()


# Example usage:
#   set(files "SkAAClip.cpp" "SkAAClip.h")
#   split_srcs_and_hdrs(MyGroup ${files})
#   message(STATUS "Sources: ${MyGroup_SRCS}")
#   message(STATUS "Headers: ${MyGroup_HDRS}")
function(split_srcs_and_hdrs name files_list)

    set(srcs_list "")
    set(hdrs_list "")

    foreach(file ${files_list})
        if(${file} MATCHES "\\.cpp$")
            list(APPEND srcs_list ${file})
        elseif(${file} MATCHES "\\.mm$")
            list(APPEND srcs_list ${file})
        elseif(${file} MATCHES "\\.h$")
            list(APPEND hdrs_list ${file})
        else()
            message(FATAL_ERROR "File is neither .cpp, .mm, nor .h: ${file}")
        endif()
    endforeach()

    if((NOT srcs_list) OR (NOT hdrs_list))
        message(FATAL_ERROR "The list consists of either only source or header files. No need to use this function.")
    endif()

    # Instead of creating filegroups, we set variables for use in parent scope
    set(${name}_SRCS ${srcs_list} PARENT_SCOPE)
    set(${name}_HDRS ${hdrs_list} PARENT_SCOPE)

endfunction()


# Example usage:
#   split_srcs_and_hdrs_relative(DECODE_PNG BASE_DIR "${FILE_LIST}")
#   message(STATUS "DECODE_PNG_SRCS: ${DECODE_PNG_SRCS}")
#   message(STATUS "DECODE_PNG_HDRS: ${DECODE_PNG_HDRS}")
function(split_srcs_and_hdrs_relative name base)
    set("${name}_FILES" "")
    set(
            "${name}_FILENAMES"
            ${ARGN}
    )
    foreach (FILE ${${name}_FILENAMES})
        list(APPEND "${name}_FILES" "${base}/${FILE}")
    endforeach()
    split_srcs_and_hdrs(
            ${name}
            "${${name}_FILES}"
    )

    # TODO(CGQAQ): verbose mode only
    message(STATUS "${name}_SRCS ${${name}_SRCS}")
    message(STATUS "${name}_HDRS ${${name}_HDRS}")

    set("${name}_SRCS" "${${name}_SRCS}" PARENT_SCOPE)
    set("${name}_HDRS" "${${name}_HDRS}" PARENT_SCOPE)
    unset("${name}_FILES")
    unset("${name}_FILENAMES")
endfunction()