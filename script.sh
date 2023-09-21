#!/bin/bash 

 

echo "Starting script execution..." 

 

# Update the package list and install some essential packages 

echo "Updating package list and installing essential packages..." 

apt-get update && apt-get install -y \ 

    curl \ 

    build-essential \ 

    python3.9 \ 

    python3.9-dev \ 

    python3.9-venv \ 

    python3-pip 

 

# Create a Python virtual environment 

echo "Creating a Python virtual environment..." 

python3.9 -m venv my_env 

 

# Activate the virtual environment 

echo "Activating the virtual environment..." 

source my_env/bin/activate 

 

# Upgrade pip and setuptools 

echo "Upgrading pip and setuptools..." 

pip install --upgrade pip setuptools 

 

# Install required Python packages 

echo "Installing required Python packages from requirements.txt..." 

pip install -r requirements.txt 

 

# Copy the Python script to the /app directory 

echo "Copying the Python script to the /app directory..." 

cp my_script.py /app 

 

# Run the Python script 

echo "Running the Python script..." 

python my_script.py 

 

# Deactivate the virtual environment 

echo "Deactivating the virtual environment..." 

deactivate 

 

# Clean up 

echo "Cleaning up..." 

rm -rf my_env 

 

echo "Script execution completed!" 
