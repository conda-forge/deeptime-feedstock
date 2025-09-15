#!/bin/bash
export CXXFLAGS="${CXXFLAGS} -Wno-missing-template-arg-list-after-template-kw"

$PYTHON -m pip install . --no-deps --ignore-installed -v
