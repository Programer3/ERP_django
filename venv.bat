@echo off
setlocal

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
        rd /S /Q "%VENV_NAME%"
    ) else (
        echo Skipping virtual environment creation.
        exit /b 0
    )
) else (
    echo Creating virtual environment '%VENV_NAME%'...
    python -m venv "%VENV_NAME%" --prompt "%VENV_NAME%"
    if errorlevel 1 (
        echo Failed to create virtual environment.
        exit /b 1
    )
)

rem Ask if user wants to activate the virtual environment
set /p "ACTIVATE=Do you want to activate the virtual environment now (y/N)? "
if /i "%ACTIVATE%"=="y" (
    rem Check if the virtual environment was created successfully
    if exist "%VENV_NAME%\Scripts\activate" (
        rem Activate virtual environment
        call "%VENV_NAME%\Scripts\activate"

        rem Install required packages
        if exist "%REQUIREMENTS_FILE%" (
            echo Installing required packages...
            python.exe -m pip install --upgrade pip
            pip install -r "%REQUIREMENTS_FILE%"
            if errorlevel 1 (
                echo Failed to install required packages.
                exit /b 1
            )
        ) else (
            echo Requirements file '%REQUIREMENTS_FILE%' not found. Skipping package installation.
        )

        rem Deactivate virtual environment
        deactivate

        echo Virtual environment '%VENV_NAME%' created and activated successfully.
    ) else (
        echo Failed to create virtual environment '%VENV_NAME%'.
        exit /b 1
    )
) else (
    echo Virtual environment '%VENV_NAME%' created successfully.
)

echo Below are some useful commands for managing the virtual environment:
echo `python -m venv venvname` to create the virtual environment.(You can also use `python -m venv --prompt venvname venvname` to create the virtual environment with a custom prompt.)
echo `venvname\Scripts\activate` to activate the virtual environment on Windows.
echo `source venvname/bin/activate` to activate the virtual environment on Linux/macOS.
echo `deactivate` to deactivate the virtual environment.
echo `pip freeze > requirements.txt` to generate the requirements.txt file.
echo `pip install -r requirements.txt` to install the required packages.
echo `pip install -r requirements.txt --upgrade` to upgrade the required packages.
echo `pip install -r requirements.txt --upgrade --no-cache-dir` to upgrade the required packages without caching.
echo `pip show <package>` to show the package information.
echo `pip show -f <package>` to show the package files.
echo `pip show -f -v <package>` to show the package files with verbose output.
echo `pip install <package>` to install the package.
echo `pip install <package> --upgrade` to upgrade the package.
echo `pip list` to show the installed packages.
echo `pip uninstall <package>` to uninstall the package.
echo `pip uninstall -y <package>` to uninstall the package without confirmation.

echo Done!
endlocal