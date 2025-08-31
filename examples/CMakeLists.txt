add_subdirectory(money)
add_executable(simple simple/ExampleTestCase.cpp simple/Main.cpp simple/ExampleTestCase.h)
target_link_libraries(simple cppunit)
