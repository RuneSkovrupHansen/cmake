#!/bin/bash

#Default command to build
#cmake -S . -B build/

# Build with option GLFW_BUILD_DOCS set to OFF
cmake -DGLFW_BUILD_DOCS=OFF -S . -B build/
