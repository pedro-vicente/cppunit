# cppunit
cppunit test framework with added CMake build

## build instructions

```bash
git clone https://github.com/pedro-vicente/cppunit.git
cd cppunit
mkdir build
cd build
cmake .. -DCPPUNIT_BUILD_TESTS=ON
cmake --build . --config Debug
```

or use the supplied script

```bash
build.cmake.sh
```



