| Keyword / Syntax | Description                                   | Example                      |
| ---------------- | --------------------------------------------- | ---------------------------- |
| `function`       | (Optional) Used to declare a function         | `function myfunc { ... }`    |
| `()`             | Denotes function definition                   | `myfunc() { ... }`           |
| `{}`             | Encloses the function body                    | `myfunc() { echo "Hello"; }` |
| `local`          | Declares a local variable inside a function   | `local var="value"`          |
| `return`         | Exits the function with an optional exit code | `return 0`                   |
| `$1`, `$2`, ...  | Positional parameters (arguments)             | `echo "Hello, $1"`           |
| `$@`, `$#`       | All arguments / number of arguments           | `echo "Args: $@"`            |