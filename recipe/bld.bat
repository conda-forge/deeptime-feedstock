@echo on

:: The vs2022 activation presets the Visual Studio generator plus a platform and
:: toolset; Ninja rejects the latter two, so clear them when switching generator.
set CMAKE_GENERATOR=Ninja
set CMAKE_GENERATOR_PLATFORM=
set CMAKE_GENERATOR_TOOLSET=

:: The GitHub archive tarball has no git metadata, so tell setuptools-scm the version.
set SETUPTOOLS_SCM_PRETEND_VERSION=%PKG_VERSION%

"%PYTHON%" -m pip install . --no-deps --no-build-isolation -vv
if errorlevel 1 exit 1
