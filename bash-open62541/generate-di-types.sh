#!/bin/bash

set -euo pipefail

python3 ./open62541/tools/generate_datatypes.py               \
--namespace=2                                                 \
--type-csv=./open62541/deps/ua-nodeset/DI/OpcUaDiModel.csv    \
--type-bsd=./open62541/deps/ua-nodeset/DI/Opc.Ua.Di.Types.bsd \
--no-builtin                                                  \
./src/ua_types_di
