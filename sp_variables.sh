#!/bin/bash

echo "$0	Script name"
echo "$1-$9	Positional arguments"
echo "$@	All arguments (individually quoted)"
echo "$*	All arguments (as a single string)"
echo "$#	Number of arguments"
echo "$?	Exit status of last command"
echo "$$	PID of current script"
echo "$!	PID of last background process"
echo "$_	Last argument of last command"