#!/bin/bash

set -euo pipefail

mkdir -p ./src_generated/

python3 ./open62541/tools/generate_datatypes.py               \
--namespace=2                                                 \
--type-csv=./open62541/deps/ua-nodeset/DI/OpcUaDiModel.csv    \
--type-bsd=./open62541/deps/ua-nodeset/DI/Opc.Ua.Di.Types.bsd \
--no-builtin                                                  \
./src_generated/ua_types_di
