#!/bin/bash

# This script creates an account on the local system.
# You will be prompted for the account name and password.

# Ask for the user name.

read -p 'User Name: ' USER_NAME

# Ask for the real name.

read -p 'Real Name: ' REAL_NAME

# Ask for the password.

read -p 'Password: ' PASSWORD

# Create the user.

useradd -c "${COMMENT}" -m "${USER_NAME}"

# Set the password for the user.

echo ${PASSWORD} | passwd --stdin ${USER_NAME}

# Force password change on first login.

passwd -e ${USER_NAME}
