#!/bin/bash

set -xe

# install using pip from the whl files on PyPI

if [ `uname` == Darwin ]; then  
    WHL_FILE=snowpipe_streaming-${PKG_VERSION}-cp39-abi3-macosx_11_0_arm64.whl
    curl -Lso "$WHL_FILE" https://pypi.org/packages/cp39/s/snowpipe-streaming/snowpipe_streaming-${PKG_VERSION}-cp39-abi3-macosx_11_0_arm64.whl
fi

if [ `uname` == Linux ]; then
    if [ "$target_platform" == "linux-aarch64" ]; then
        WHL_FILE=https://pypi.org/packages/cp39/s/snowpipe-streaming/snowpipe_streaming-${PKG_VERSION}-cp39-abi3-manylinux_2_17_aarch64.manylinux2014_aarch64.whl
    elif [ "$target_platform" == "linux-64" ]; then
        WHL_FILE=https://pypi.org/packages/cp39/s/snowpipe-streaming/snowpipe_streaming-${PKG_VERSION}-cp39-abi3-manylinux_2_24_x86_64.whl
    fi
fi

$PYTHON -m pip install --no-deps --no-build-isolation -vvv $WHL_FILE