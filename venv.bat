@echo off

rem Ask user for virtual environment name
set /p "VENV_NAME=Enter virtual environment name: "

rem Script settings
set "REQUIREMENTS_FILE=requirements.txt"
set "PYTHON_VERSION=3.12.3"

rem Check if virtual environment already exists
if exist "%VENV_NAME%" (
    echo Virtual environment '%VENV_NAME%' already exists.
    set /p "recreate=Do you want to recreate it (y/N)? "
    if /i "%recreate%"=="y" (
        rmdir /S /Q "%VENV_NAME%"
    ) else (
        echo Skipping virtual environment creation.
        exit /b 0
    )
) else (
    echo Creating virtual environment '%VENV_NAME%'...
    python -m venv "%VENV_NAME%"
)

rem Ask if user wants to activate the virtual environment
set /p "ACTIVATE=Do you want to activate the virtual environment now (y/N)? "
if /i "%ACTIVATE%"=="y" (
    rem Activate virtual environment
    call "%VENV_NAME%\Scripts\activate"

    rem Install required packages
    echo Installing required packages...
    pip install -r "%REQUIREMENTS_FILE%"

    rem Deactivate virtual environment
    deactivate

    echo Virtual environment '%VENV_NAME%' created and activated successfully.
) else (
    echo Virtual environment '%VENV_NAME%' created successfully.
)