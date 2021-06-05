#!/bin/bash

# This script displays various information on the screen.

# Display the text hello
echo "Hello"

# variables

WORD='script'

echo "hello $WORD"
echo "hello ${WORD} welp"

# This syntax doesnt work when appending strings
# echo "hello $WORDing the world"


# Demonstrate reassigning a variable
ENDING='ing'

echo "script${ENDING} is fun"

ENDING='er'

echo "script${ENDING} is fun"




















