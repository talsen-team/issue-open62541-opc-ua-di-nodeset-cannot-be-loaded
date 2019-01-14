#!/bin/bash

set -euo pipefail

cd src
meson build
cd build
ninja
cd ..
cd ..
mkdir -p publish
cd publish
cp ../src/build/server-app .
