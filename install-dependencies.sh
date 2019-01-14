#!/bin/bash

set -euo pipefail

apt-get update
apt-get install -y     \
               gcc     \
               meson   \
               python3
