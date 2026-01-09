@echo on

%PYTHON% -m pip install --no-deps --no-build-isolation https://pypi.org/packages/cp39/s/snowpipe-streaming/snowpipe_streaming-%PKG_VERSION%-cp39-abi3-win_amd64.whl
if errorlevel 1 exit 1