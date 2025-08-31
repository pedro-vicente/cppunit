mkdir -p build
pushd build
cmake .. --fresh
cmake --build . --config Debug --parallel
popd 
