# CLI Options

```bash
Usage: cr [<input>] [-1] [--disable-stack] [--skip-arity-check] [--emit-path <emit-path>] [--init-fn <init-fn>] [--reload-fn <reload-fn>] [--entry <entry>] [--reload-libs] [--watch-dir <watch-dir>] [<command>] [<args>]

Top-level command.

Positional Arguments:
  input             input source file, defaults to "compact.cirru"

Options:
  -1, --once        skip watching mode, just run once
  --disable-stack   disable stack trace for errors
  --skip-arity-check
                    skip arity check in js codegen
  --emit-path       entry file path, defaults to "js-out/"
  --init-fn         specify `init_fn` which is main function
  --reload-fn       specify `reload_fn` which is called after hot reload
  --entry           specify with config entry
  --reload-libs     force reloading libs data during code reload
  --watch-dir       specify a path to watch assets changes
  --help            display usage information

Commands:
  js                emit JavaScript rather than interpreting
  ir                emit Cirru EDN representation of program to program-ir.cirru
  eval              run program
```
