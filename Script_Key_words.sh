

Special Shell Variables (Used in Scripts)
| Variable | Description                           | Example Usage          |
| -------- | ------------------------------------- | ---------------------- |
| `$0`     | Name of the script                    | `echo "$0"`            |
| `$1`     | First argument passed to the script   | `echo "$1"`            |
| `$2`     | Second argument                       | `echo "$2"`            |
| `$@`     | All arguments (individually quoted)   | `echo "$@"`            |
| `$*`     | All arguments (as a single string)    | `echo "$*"`            |
| `$#`     | Total number of arguments             | `echo "$#"`            |
| `$?`     | Exit status of the last command       | `echo "$?"`            |
| `$$`     | PID of the current shell/script       | `echo "$$"`            |
| `$!`     | PID of the last background process    | `sleep 10 & echo "$!"` |
| `$_`     | Last argument of the previous command | `echo $_`              |


Variable Management
| Keyword    | Description                         | Example                      |
| ---------- | ----------------------------------- | ---------------------------- |
| `=`        | Assign value to variable            | `name="Alice"`               |
| `export`   | Make variable available to subshell | `export PATH=$PATH:/new/dir` |
| `readonly` | Make variable constant              | `readonly PI=3.14`           |
| `local`    | Local variable in function          | `local msg="Hi"`             |
| `declare`  | Declare variable with attributes    | `declare -i num=10`          |
| `unset`    | Remove variable                     | `unset name`                 |


Control Flow / Conditional Statements
| Keyword | Description              | Example                        |
| ------- | ------------------------ | ------------------------------ |
| `if`    | Starts conditional block | `if [ $a -eq $b ]; then ...`   |
| `then`  | Start of true branch     | `then echo "Yes"`              |
| `elif`  | Else if                  | `elif [ $a -gt $b ]; then ...` |
| `else`  | Default case             | `else echo "No"`               |
| `fi`    | End of if block          | `fi`                           |
| `case`  | Switch-case structure    | `case $var in ...)`            |
| `esac`  | End of case block        | `esac`                         |

Loops
| Keyword    | Description                 | Example                           |
| ---------- | --------------------------- | --------------------------------- |
| `for`      | For loop                    | `for i in 1 2 3; do ... done`     |
| `while`    | While loop                  | `while [ $i -lt 5 ]; do ... done` |
| `until`    | Until loop                  | `until [ $i -gt 5 ]; do ... done` |
| `do`       | Start of loop body          | `do echo $i`                      |
| `done`     | End of loop                 | `done`                            |
| `break`    | Exit the loop               | `break`                           |
| `continue` | Skip to next loop iteration | `continue`                        |

Functions
| Keyword    | Description                     | Example                     |
| ---------- | ------------------------------- | --------------------------- |
| `function` | (Optional) Function declaration | `function say_hi() { ... }` |
| `return`   | Exit function with status code  | `return 0`                  |

Testing / Condition Evaluation
| Symbol/Command | Description             | Example               |
| -------------- | ----------------------- | --------------------- |
| `[ ... ]`      | Basic condition test    | `[ $a -eq $b ]`       |
| `[[ ... ]]`    | Advanced condition test | `[[ $str == "yes" ]]` |
| `test`         | Equivalent to `[ ... ]` | `test $a -gt 10`      |
| `-f`           | File exists             | `[ -f "file.txt" ]`   |
| `-d`           | Directory exists        | `[ -d "/home" ]`      |
| `-z`           | String is empty         | `[ -z "$var" ]`       |
| `-n`           | String is not empty     | `[ -n "$var" ]`       |


File Operations & Execution Control
| Keyword  | Description                         | Example                |
| -------- | ----------------------------------- | ---------------------- |
| `source` | Run another script in current shell | `source config.sh`     |
| `.`      | Same as `source`                    | `. config.sh`          |
| `exec`   | Replace current shell with command  | `exec ls`              |
| `exit`   | Exit the script                     | `exit 1`               |
| `trap`   | Run command on signal or exit       | `trap "echo Bye" EXIT` |


Argument & Parameter Handling
| Symbol    | Description                         | Example                   |
| --------- | ----------------------------------- | ------------------------- |
| `$0`      | Script name                         | `echo "This is $0"`       |
| `$1` `$2` | Positional parameters               | `echo "First arg: $1"`    |
| `$@`      | All arguments (as separate strings) | `for arg in "$@"; do ...` |
| `$*`      | All arguments (as one string)       | `echo "$*"`               |
| `$#`      | Number of arguments                 | `echo "Total: $#"`        |
| `shift`   | Shift positional parameters         | `shift`                   |


| Operator | Description                          | Example Usage                              |                  |            |
| -------- | ------------------------------------ | ------------------------------------------ | ---------------- | ---------- |
| `>`      | Redirect standard output (overwrite) | `echo "Hello" > file.txt`                  |                  |            |
| `>>`     | Redirect standard output (append)    | `echo "World" >> file.txt`                 |                  |            |
| `<`      | Redirect standard input from a file  | `wc -l < file.txt`                         |                  |            |
| `2>`     | Redirect standard error              | `ls wrongfile 2> error.log`                |                  |            |
| `2>>`    | Append standard error                | `ls wrongfile 2>> error.log`               |                  |            |
| `&>`     | Redirect both stdout and stderr      | `command &> output.log`                    |                  |            |
| `&>>`    | Append both stdout and stderr        | `command &>> output.log`                   |                  |            |
| `2>&1`   | Redirect stderr to stdout            | `command > all.log 2>&1`                   |                  |            |
| `1>&2`   | Redirect stdout to stderr            | `echo "error" 1>&2`                        |                  |            |
| `<<`     | Here document (multi-line input)     | `cat << EOF ... EOF`                       |                  |            |
| `<<<`    | Here string                          | `grep "word" <<< "one word line"`          |                  |            |
|  `>`     |                                      | Force overwrite even if `noclobber` is set | \`echo "force" > | file.txt\` |
