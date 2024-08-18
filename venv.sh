#!/bin/bash

# Ask user for virtual environment name
read -p "Enter virtual environment name: " VENV_NAME

# Script settings
REQUIREMENTS_FILE="requirements.txt"
PYTHON_VERSION="3.12.3"

# Check if virtual environment already exists
if [ -d "$VENV_NAME" ]; then
    echo "Virtual environment '$VENV_NAME' already exists."
    read -p "Do you want to recreate it (y/N)? " recreate
    if [ "$recreate" = "y" ]; then
        rm -rf "$VENV_NAME"
    else
        echo "Skipping virtual environment creation."
        exit 0
    fi
else
    echo "Creating virtual environment '$VENV_NAME'..."
    python -m venv "$VENV_NAME"
fi

# Ask if user wants to activate the virtual environment
read -p "Do you want to activate the virtual environment now (y/N)? " ACTIVATE
if [ "$ACTIVATE" = "y" ]; then
    # Activate virtual environment
    source "$VENV_NAME/bin/activate"

    # Install required packages
    echo "Installing required packages..."
    pip install -r "$REQUIREMENTS_FILE"

    # Deactivate virtual environment
    deactivate

    echo "Virtual environment '$VENV_NAME' created and activated successfully."
else
    echo "Virtual environment '$VENV_NAME' created successfully."
fi