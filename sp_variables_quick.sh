#!/bin/bash

--------------------
VARIABLE SPECIAL :-
--------------------
echo "$0	Script name"
echo "$1-$9	Positional arguments"
echo "$@	All arguments (individually quoted)"
echo "$*	All arguments (as a single string)"
echo "$#	Number of arguments"
echo "$?	Exit status of last command"
echo "$$	PID of current script"
echo "$!	PID of last background process"
echo "$_	Last argument of last command"

---------------------
CONDITION SPECIAL :-
---------------------
Numeric Comparison:
Operator	Description
-eq	Equal
-ne	Not equal
-gt	Greater than
-lt	Less than
-ge	Greater or equal
-le	Less or equal

String Comparison:
Operator	Description
=	Equal
!=	Not equal
-z	Empty string
-n	Not empty

File Test:
Operator	Description
-e	File exists
-f	Regular file
-d	Directory
-r	Readable
-w	Writable
-x	Executable

-----------------------------
Special Argument Variables :-
-----------------------------
Variable	Meaning
$0	    Script name
$1	    First argument
$2	    Second argument
$@	    All arguments (individually)
$*	    All arguments (as one string)
$#	    Number of arguments passed