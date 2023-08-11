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