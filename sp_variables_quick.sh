#!/bin/bash

 Special Shell Variables (Used in Scripts)
| Variable  | Description                                    | Example Output                    |
| --------- | ---------------------------------------------- | --------------------------------- |
| `$0`      | Script name                                    | `./myscript.sh`                   |
| `$1`–`$9` | Positional arguments (1st to 9th)              | `$1`, `$2`, ...                   |
| `$@`      | All arguments as **individual** quoted strings | `"arg1" "arg2"`                   |
| `$*`      | All arguments as **one** single string         | `"arg1 arg2"`                     |
| `$#`      | Number of arguments                            | `2` (if two arguments are passed) |
| `$?`      | Exit status of last command                    | `0` for success, `1` for failure  |
| `$$`      | PID of the current script                      | `32456`                           |
| `$!`      | PID of the last background process             | `32457`                           |
| `$_`      | Last argument of the previous command          | `filename.txt`                    |


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