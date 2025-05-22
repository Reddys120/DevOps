| Keyword / Syntax | Description                                   | Example                         |
| ---------------- | --------------------------------------------- | ------------------------------- |
| `=`              | Assign a value to a variable (no spaces!)     | `name="Alice"`                  |
| `export`         | Make a variable available to subprocesses     | `export PATH="$PATH:/new/path"` |
| `readonly`       | Make a variable read-only (cannot be changed) | `readonly PI=3.14`              |
| `local`          | Declare a variable local to a function        | `local var="temp"`              |
| `${}`            | Access the value of a variable                | `echo "Hello, ${name}"`         |
| `unset`          | Delete a variable                             | `unset name`                    |
| `declare`        | Declare and optionally type a variable        | `declare -i num=5`              |
| `typeset`        | Same as `declare` (used mostly in functions)  | `typeset -r const="value"`      |
