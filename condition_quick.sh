| Keyword / Symbol | Description                                           | Example                           |                              |                  |   |                       |
| ---------------- | ----------------------------------------------------- | --------------------------------- | ---------------------------- | ---------------- | - | --------------------- |
| `if`             | Starts a conditional block                            | `if [ $x -gt 0 ]; then ...`       |                              |                  |   |                       |
| `then`           | Starts the commands that run if the condition is true | `then echo "OK"`                  |                              |                  |   |                       |
| `elif`           | Else if: test another condition                       | `elif [ $x -eq 0 ]; then ...`     |                              |                  |   |                       |
| `else`           | Run commands if none of the above conditions are true | `else echo "Fail"`                |                              |                  |   |                       |
| `fi`             | Ends the `if` block                                   | `fi`                              |                              |                  |   |                       |
| `[[ ... ]]`      | Advanced test command (for strings, regex, patterns)  | `[[ $a == $b ]]`                  |                              |                  |   |                       |
| `[ ... ]`        | Basic test command                                    | `[ $x -gt 5 ]`                    |                              |                  |   |                       |
| `test`           | Equivalent to `[ ... ]`                               | `test $x -lt 10`                  |                              |                  |   |                       |
| `!`              | Logical NOT                                           | `if ! [ -f file ]; then ...`      |                              |                  |   |                       |
| `-a`             | Logical AND (in `[ ]`, avoid in `[[ ]]`)              | `[ -f file -a -r file ]`          |                              |                  |   |                       |
| `-o`             | Logical OR (in `[ ]`, avoid in `[[ ]]`)               | `[ $x -lt 1 -o $y -gt 5 ]`        |                              |                  |   |                       |
| `&&`             | AND operator between commands                         | `[ $x -gt 0 ] && echo "Positive"` |                              |                  |   |                       |
| OR               | operator between commands | \`\[ \$x -gt 0 ]          |  echo "Non-positive"\`            |


Integer Comparison Operators
| Operator | Meaning          | Example         |
| -------- | ---------------- | --------------- |
| `-eq`    | Equal to         | `[ $a -eq $b ]` |
| `-ne`    | Not equal to     | `[ $a -ne $b ]` |
| `-gt`    | Greater than     | `[ $a -gt $b ]` |
| `-lt`    | Less than        | `[ $a -lt $b ]` |
| `-ge`    | Greater or equal | `[ $a -ge $b ]` |
| `-le`    | Less or equal    | `[ $a -le $b ]` |


String Comparison Operators
| Operator    | Meaning                | Example          |
| ----------- | ---------------------- | ---------------- |
| `==` or `=` | Equal to               | `[[ $a == $b ]]` |
| `!=`        | Not equal to           | `[[ $a != $b ]]` |
| `<`         | Less than (lexically)  | `[[ $a < $b ]]`  |
| `>`         | Greater than (lexical) | `[[ $a > $b ]]`  |
| `-z`        | String is empty        | `[ -z "$str" ]`  |
| `-n`        | String is not empty    | `[ -n "$str" ]`  |
    