cmake_minimum_required(VERSION 3.10)
project(cppunit VERSION 1.15.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
option(CPPUNIT_BUILD_EXAMPLES "Build CppUnit examples" ON)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Debug)
endif()

set(CPPUNIT_LIB_TYPE STATIC)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
add_subdirectory(src/cppunit)

if(CPPUNIT_BUILD_EXAMPLES)
  add_subdirectory(examples)
endif()

if(CPPUNIT_BUILD_EXAMPLES)
  set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT simple)
else()
  set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT cppunit)
endif()

install(DIRECTORY include/ DESTINATION include
        FILES_MATCHING PATTERN "*.h")

install(TARGETS cppunit
        EXPORT cppunit-targets
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        RUNTIME DESTINATION bin)
