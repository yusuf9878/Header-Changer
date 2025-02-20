#!/bin/bash

# Function to change Termux header
change_header() {
    echo "Changing Termux header..."
    
    # Define the new header text
    new_header="Custom Termux Header"

    # Change the header
    echo -e "\e]0;$new_header\a"
}

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root."
    exit
fi

# Call the function to change the header
change_header
