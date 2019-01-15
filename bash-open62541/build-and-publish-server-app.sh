#!/bin/bash

set -euo pipefail

echo ""
echo "#####"
echo "building open62541 wih full NS0 ..."
cd open62541
mkdir -p build
cd build
cmake -DUA_ENABLE_FULL_NS0=ON ..
make
cp open62541.h ../../src
cp bin/libopen62541.a ../../src
cd ../../src
echo "building open62541 wih full NS0 ... done"
echo "#####"
echo ""
echo ""
echo "#####"
echo "building server application with generated nodeset ..."
gcc -Wall *.c -o server-app -L . -lopen62541
echo "building server application with generated nodeset ... done"
echo "#####"
echo ""
echo ""
echo "#####"
echo "publishing server application with generated nodeset ..."
cd ..
mkdir -p publish
cd publish
cp ../src/server-app .
echo "publishing server application with generated nodeset ... done"
echo "#####"
echo ""
