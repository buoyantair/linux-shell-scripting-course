#!/bin/bash

# This script generates a list of random passwords.

PASSWORD="${RANDOM}"
echo "${PASSWORD}"

PASSWORD="${RANDOM}"
echo "${PASSWORD}"

PASSWORD="${RANDOM}"
echo "${PASSWORD}"


# Generate password using date and sha256sum

PASSWORD=$(date +%s%N | sha256sum | head -c48)
echo "${PASSWORD}"

# Even better way to generate password

PASSWORD=$(date +%s%N${RANDOM}${RANDOM} | sha256sum | head -c60)
echo "${PASSWORD}"

# Special character password gens
SPECIAL_CHARACTER=$(echo '!@#$%^&*()_+' | fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"