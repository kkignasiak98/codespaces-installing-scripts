#!/bin/bash
# NOTE this script will not remove the configuration from `.bashrc`. 
# It will be updated in the future.
# Find the Pyenv root directory
pyenv_root=$(pyenv root)

# Remove Pyenv directory
rm -rf "$pyenv_root"

echo "Pyenv removed successfully."
