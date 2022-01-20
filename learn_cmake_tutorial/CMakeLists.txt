cmake_minimum_required(VERSION 3.16.3)

# Set project name
project(learn_cmake_tutorial)

# Set variable LIBRARY_SRC to "library.cpp"
set(LIBRARY_SRC library.cpp)

# Set variable LIBRARY_NAME to "my_library"
set(LIBRARY_NAME my_library)

# This will cause the variable to be name "my_library"

# Add the library using the two variables we set previously
add_library(${LIBRARY_NAME} ${LIBRARY_SRC})

# Add executable with project name
add_executable(${PROJECT_NAME} main.cpp)

# Link the library to the executable using the built-in variable PROJECT_NAME
# and the previously defined variable LIBRARY_NAME
target_link_libraries(${PROJECT_NAME} ${LIBRARY_NAME})
