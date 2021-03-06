cmake_minimum_required(VERSION 3.17)
project(Planet)

set(CMAKE_CXX_STANDARD 11)

include_directories(include)

add_executable(Planet
  src/main.cpp
  src/planet.cpp
  include/planet.hpp
)
