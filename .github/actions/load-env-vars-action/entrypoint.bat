@echo off
rem Add the logic to read the environment variables from the provided env file and set them in the workflow

set "env_file=%~1"
if exist "%env_file%" (
  for /f "usebackq delims=" %%i in ("%env_file%") do set "%%i"
) else (
  echo "Error: %env_file% not found!"
  exit 1
)
