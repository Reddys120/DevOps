| Keyword    | Description                                | Example                              |
| ---------- | ------------------------------------------ | ------------------------------------ |
| `for`      | Loop through a list or sequence            | `for i in 1 2 3; do ... done`        |
| `while`    | Loop while a condition is true             | `while [ $i -lt 5 ]; do ... done`    |
| `until`    | Loop until a condition is true             | `until [ $i -gt 5 ]; do ... done`    |
| `do`       | Begins the body of a loop                  | `do`                                 |
| `done`     | Ends the loop block                        | `done`                               |
| `break`    | Exits the loop immediately                 | `if [ $i -eq 3 ]; then break; fi`    |
| `continue` | Skips current loop iteration, goes to next | `if [ $i -eq 2 ]; then continue; fi` |
