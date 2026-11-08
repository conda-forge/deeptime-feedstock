#!/bin/bash
set -ex

export CXXFLAGS="${CXXFLAGS} -Wno-missing-template-arg-list-after-template-kw"

# conda-build presets CMAKE_GENERATOR="Unix Makefiles", which scikit-build-core
# honors; there is no make in the build env, so use ninja instead.
export CMAKE_GENERATOR=Ninja

# The GitHub archive tarball has no git metadata, so tell setuptools-scm the version.
export SETUPTOOLS_SCM_PRETEND_VERSION="${PKG_VERSION}"

${PYTHON} -m pip install . --no-deps --no-build-isolation -vv
