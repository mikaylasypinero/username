#!/bin/bash
# username.sh
# Author: mikaylasypinero

echo "Username Rules:"
echo "1. Only lowercase letters, digits, and underscores allowed."
echo "2. Must start with a lowercase letter."
echo "3. Must be 3–12 characters long."
echo ""

while true; do
    read -p "Enter a username: " username
    if [[ $username =~ ^[a-z][a-z0-9_]{2,11}$ ]]; then
        echo "Thank you! '$username' is a valid username."
        break
    else
        echo "Invalid username. Please try again."
    fi
done