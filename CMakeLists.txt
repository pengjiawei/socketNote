cmake_minimum_required(VERSION 3.9)
project(socketNote)

set(CMAKE_CXX_STANDARD 11)

add_executable(socketClient socketClient.cpp)
add_executable(socketServer socketServer.cpp)