# Use standard version from cmake --version
cmake_minimum_required(VERSION 3.16.3) 

# Set project name
project(hello_world)

# Build the source file main.cpp into an object with the project name
add_executable(${PROJECT_NAME} main.cpp)

# Normally the command "git submodule update --init --recursive" can be used to download all submodules
# but it can also be placed into cmake so cmake automatically does it when building.



# We're now adding the relevant code to include libraries

# Add subdirectories
add_subdirectory(Adder)
add_subdirectory(external/glfw)

# Add as include directory, could be combined with call above, note that it is the include/ folder that is included
target_include_directories(${PROJECT_NAME}
    PUBLIC Adder
    PUBLIC external/glfw/include
)

# Link directories, this must be where the file is located, note that it paths from build/
# This is used in the linking step below
target_link_directories(${PROJECT_NAME}
    PRIVATE Adder
    PRIVATE external/glfw/src
)

# Link libraries
target_link_libraries(${PROJECT_NAME}
    adder
    glfw
)