#!/bin/bash
set -ex

export CXXFLAGS="${CXXFLAGS} -Wno-missing-template-arg-list-after-template-kw"

# The GitHub archive tarball has no git metadata, so tell setuptools-scm the version.
export SETUPTOOLS_SCM_PRETEND_VERSION="${PKG_VERSION}"

${PYTHON} -m pip install . --no-deps --no-build-isolation -vv
