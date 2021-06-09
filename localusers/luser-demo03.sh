#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the vagrant user or not.

# Display UID


echo "UID is ${UID}"

# Only display if the UID does not match 1000 (vagrant).

UID_TO_TEST_FOR=1000

if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
	echo "Hurray, UID doesn't match ${UID_TO_TEST_FOR}!"
	exit 1
else
	echo "UID matches 1000!"
fi

# Display the username.

USER_NAME=$(id -un)

# Test if the command succeeded.

if [[ "${?}" -ne 0 ]]
then
	echo "The id command didn't execute properly."
	exit 1
fi

echo "Your username is ${USER_NAME}"

# How to use a string test conditional.

USER_NAME_TO_TEST_FOR='vagrant'

if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "Your username matches ${USER_NAME_TO_TEST_FOR}."
fi

# Test for != for the string.

if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "Your username doesn't match ${USER_NAME_TO_TEST_FOR}."
	exit 1
fi

exit 0
