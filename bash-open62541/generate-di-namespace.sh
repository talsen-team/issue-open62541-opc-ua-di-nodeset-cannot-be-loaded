#!/bin/bash

set -euo pipefail

python3 ./open62541/tools/nodeset_compiler/nodeset_compiler.py    \
--internal-headers                                                \
--types-array=UA_TYPES                                            \
--types-array=UA_TYPES_DI                                         \
--existing ./open62541/deps/ua-nodeset/Schema/Opc.Ua.NodeSet2.xml \
--xml ./open62541/deps/ua-nodeset/DI/Opc.Ua.Di.NodeSet2.xml       \
./src/ua_namespace_di
