cmake_minimum_required (VERSION 3.5)

project (calc)

set (main_SRC
     ${PROJECT_SOURCE_DIR}/main.cpp)

set (lib_SRC
     ${PROJECT_SOURCE_DIR}/calculator.cpp)

add_library(calculator SHARED ${lib_SRC})
add_executable(calc ${main_SRC})

target_link_libraries(calc calculator)


