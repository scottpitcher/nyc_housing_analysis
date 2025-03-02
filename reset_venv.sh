#!/bin/bash

# Define virtual environment directory
VENV_DIR=".venv"

# Remove existing virtual environment if present
if [ -d "$VENV_DIR" ]; then
    echo "Removing existing virtual environment..."
    rm -rf "$VENV_DIR"
fi

# Create a new virtual environment using Python 3.10
echo "Creating new virtual environment with Python 3.10..."
python3.10 -m venv "$VENV_DIR"

# Activate the virtual environment
echo "Activating virtual environment..."
source "$VENV_DIR/bin/activate"

# Upgrade pip
echo "Upgrading pip..."
pip install --upgrade pip

# Install dependencies from requirements.txt
if [ -f "requirements.txt" ]; then
    echo "Installing dependencies from requirements.txt..."
    pip install -r requirements.txt
else
    echo "requirements.txt not found, skipping installation."
fi

echo "Setup complete!"
