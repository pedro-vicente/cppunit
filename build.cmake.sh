mkdir -p installation/cppunit-1.15.1
mkdir -p build
pushd build
cmake .. -DCMAKE_INSTALL_PREFIX=../installation/cppunit-1.15.1 \
--fresh
cmake --build . --config Debug --parallel
cmake --install . --config Debug
popd 
