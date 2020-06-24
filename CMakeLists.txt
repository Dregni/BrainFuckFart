cmake_minimum_required(VERSION 3.0)
project(Brainfuckfart)

add_executable(bff
    main.cpp
    sources/Interpreter.cpp)

target_include_directories(bff
    PUBLIC
        includes
        sources)