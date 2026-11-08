@echo on

:: Use ninja rather than whatever generator conda-build presets.
set CMAKE_GENERATOR=Ninja

:: The GitHub archive tarball has no git metadata, so tell setuptools-scm the version.
set SETUPTOOLS_SCM_PRETEND_VERSION=%PKG_VERSION%

"%PYTHON%" -m pip install . --no-deps --no-build-isolation -vv
if errorlevel 1 exit 1
