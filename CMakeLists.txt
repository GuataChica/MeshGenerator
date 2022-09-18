cmake_minimum_required(VERSION 3.10)

project(meshGenerator)

add_subdirectory(external src)
include_directories(external src)

add_executable(meshGenerator main.cpp)

target_link_libraries(meshGenerator PUBLIC sdsl malloccountfiles  ${CMAKE_DL_LIBS})